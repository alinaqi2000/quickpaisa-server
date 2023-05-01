<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Resources\CardResource;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

class CardController extends BaseController
{
    public function request(Request $request)
    {
        $rules = ['title' => "required|min:3|max:25|unique:categories|bad_word"];
        $errors = $this->reqValidate($request->all(), $rules, ['title.unique' => "Category exists already.", 'bad_word' => 'The :attribute cannot contain a bad word.']);
        if ($errors)
            return $errors;

        auth()->user()->category_suggests()->create(['title' => $request->title, "slug" => Str::slug($request->title)]);

        return $this->resMsg(['success' => "Category creation request has been sent successfully."]);
    }
    public function all(Request $request)
    {

        return $this->resData(['availableCards' => CardResource::collection(auth()->user()->cards()->get())]);
    }
}