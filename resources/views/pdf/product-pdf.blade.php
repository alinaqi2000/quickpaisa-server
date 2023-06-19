@php

@endphp
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">
    <title>Product Details</title>
    <style>
        body {
            text-align: center;
            background: #000;
            color: #fff;
            font-family: DejaVu Sans, sans-serif;
        }



        @page {
            margin: 0;
            size: 3in 6.5in;

        }

        h1.product-title {
            color: #00FF8F;
            font-size: 16px;
        }

        .product-container {
            margin: 20px auto;
            padding: 0px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center
        }

        .product-title {
            font-size: 22px;
            margin-bottom: 0px;
        }

        .product-description {
            font-size: 12px;
            margin-bottom: 20px;
        }

        .scan-text {
            font-size: 12px;
        }

        .product-amount {
            font-size: 20px;
            margin: 20px;
            font-weight: bolder;
            color: #00FF8F;
        }

        .qr-code {
            margin-top: 20px;
        }

        .logo {
            margin-top: 20px;
            width: 120px;
        }

        .purchase-button {
            display: inline-block;
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
            margin-top: 20px;
        }

        h1,
        p {
            font-family: "Gill Sans Extrabold", sans-serif;

        }

        .purchase-button:hover {
            background-color: #45a049;
        }

        .qr {
            padding: 0 35px;
            margin: 10px 0 50px
        }

        .qr:first-child {
            float: left;
            /* height: 150px; */
            z-index: 999
        }

        .gp-image {
            width: 150px;
            height: 50px;
        }
    </style>
</head>

<body>
    <div class="product-container">
        <img class="logo" src="{{ asset('qp.png') }}" alt="{{ env('APP_NAME') }}">
        <h1 class="product-title">{{ $brand_product->title }}</h1>
        <p class="product-description">{{ $brand_product->brand->name }}</p>
        <p class="product-amount"><span>Rs. {{ $brand_product->amount }}</span></p>
        <div class="qr">
            <p class="scan-text">Scan QR Code to Pay</p>
            {!! '<img src="data:image/png;base64,' . base64_encode($qr) . '">' !!}
            {{-- {!! DNS2D::getBarcodeHTML(
                json_encode([
                    'type' => 'product',
                    'title' => $brand_product->title ?? '',
                    'amount' => $brand_product->amount ?? '',
                    'banner' => $brand_product->banner ?? '',
                    'brandName' => $brand_product->brandName ?? '',
                    'walletAddress' => $brand_product->walletAddress ?? '',
                ]),
                'QRCODE',
                4,
                4,
                'white',
            ) !!} --}}
        </div>
        {{-- <img class="qr-code"
            src="https://api.qrserver.com/v1/create-qr-code/?data=https%3A%2F%2Fexample.com%2Fproduct%2F12345&amp;size=150x150"
            alt="{{ $brand_product->title }}"> --}}
        <img class="gp-image" src="{{ asset('google.png') }}" alt="">

        </a>

    </div>
</body>

</html>
