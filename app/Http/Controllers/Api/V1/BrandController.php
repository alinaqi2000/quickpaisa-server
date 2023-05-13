<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Resources\BrandProductResource;
use App\Http\Resources\BrandResource;
use App\Models\Brand;
use App\Models\BrandProduct;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Barryvdh\DomPDF\Facade\Pdf;

use chillerlan\QRCode\{QRCode, QROptions};
use chillerlan\QRCode\Common\EccLevel;
use chillerlan\QRCode\Data\QRMatrix;
use chillerlan\QRCode\Output\QROutputInterface;

class BrandController extends BaseController
{
    public function add(Request $request)
    {
        $rules = ['name' => "required"];
        $errors = $this->reqValidate($request->all(), $rules);
        if ($errors)
            return $errors;

        $faker = \Faker\Factory::create();

        $data  = $request->only(['name', 'homepage']);
        $data['walletAddress'] = $faker->regexify('[A-Za-z0-9]{34}');

        auth()->user()->brands()->create($data);

        return $this->resData(['message' => "Brand addded successfully!z"]);
    }
    public function add_product(Request $request)
    {
        $rules = ['title' => "required", "amount" => "required"];
        $errors = $this->reqValidate($request->all(), $rules);
        if ($errors)
            return $errors;

        $faker = \Faker\Factory::create();

        $data  = $request->only([
            'brand_id',
            'title',
            'amount',
        ]);
        $data['walletAddress'] = $faker->regexify('[A-Za-z0-9]{34}');

        auth()->user()->brand_products()->create($data);

        return $this->resData(['message' => "Brand product addded successfully!z"]);
    }
    public function all(Request $request)
    {
        return $this->resData(['brands' => BrandResource::collection(auth()->user()->brands)]);
    }
    public function all_brand_products(Request $request, Brand $brand)
    {
        return $this->resData(['products' => BrandProductResource::collection($brand->products)]);
    }
    public function all_products(Request $request)
    {
        return $this->resData(['products' => BrandProductResource::collection(auth()->user()->brand_products)]);
    }
    public function delete_brand(Request $request, Brand $brand)
    {

        $brand->delete();
        return $this->resData(['message' => "Brand was deletd successfully!z"]);
    }
    public function delete_product(Request $request, BrandProduct $brand_product)
    {

        $brand_product->delete();
        return $this->resData(['message' => "Brand product was deletd successfully!z"]);
    }
    public function download_product_pdf(Request $request, BrandProduct $brand_product)
    {

        try {
            $options = new QROptions([
                'outputType'          => QROutputInterface::GDIMAGE_PNG,

                'version'             => QRCode::VERSION_AUTO,
                'eccLevel'            => EccLevel::L,
                'scale'               => 4,
                'imageBase64'         => false,
                'imageTransparent'    => false,


            ]);
            $im = (new QRCode($options))->render(json_encode([
                'type' => 'product',
                'title' => $brand_product->title ?? '',
                'amount' => (string) $brand_product->amount ?? '',
                'banner' => $brand_product->banner ?? '',
                'brandName' => $brand_product->brand->name ?? '',
                'walletAddress' => $brand_product->walletAddress ?? '',
            ]));
            $pdfContent = Pdf::loadView('pdf.product-pdf', array_merge([
                'brand_product' => $brand_product,
                'qr' => $im
            ]));
            return $pdfContent->download(Str::slug($brand_product->title) . '.pdf');
        } catch (\Throwable $th) {
            dd($th);
        }
    }
}
