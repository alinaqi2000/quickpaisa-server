<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }} | @yield('title')</title>

    {{-- ICON --}}
    <link rel="shortcut icon" type="image/jpg" href="{{ asset('storage/images/quickpaisa-logo.png') }}" />

    <!-- Font Awesome UI KIT-->
    <script src="https://kit.fontawesome.com/f75ab26951.js" crossorigin="anonymous"></script>

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('admin/css/sb-admin-2.min.css') }}" rel="stylesheet">
    <style>
        .ribbon {
            width: 150px;
            height: 150px;
            overflow: hidden;
            position: absolute;
        }

        .ribbon::before,
        .ribbon::after {
            position: absolute;
            z-index: -1;
            content: '';
            display: block;
            border: 5px solid #2980b9;
        }

        .ribbon span {
            position: absolute;
            display: block;
            width: 225px;
            padding: 15px 0;
            background-color: #34db42;
            box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
            color: #fff;
            font: 700 18px/1 'Lato', sans-serif;
            text-shadow: 0 1px 1px rgba(0, 0, 0, .2);
            text-transform: uppercase;
            text-align: center;
        }

        .ribbon span.danger {
            background-color: #db3434;
        }

        /* top left*/
        .ribbon-top-left {
            top: -10px;
            left: -10px;
        }

        .ribbon-top-left::before,
        .ribbon-top-left::after {
            border-top-color: transparent;
            border-left-color: transparent;
        }

        .ribbon-top-left::before {
            top: 0;
            right: 0;
        }

        .ribbon-top-left::after {
            bottom: 0;
            left: 0;
        }

        .ribbon-top-left span {
            right: -25px;
            top: 30px;
            transform: rotate(-45deg);
        }

        /* top right*/
        .ribbon-top-right {
            top: -10px;
            right: -10px;
        }

        .ribbon-top-right::before,
        .ribbon-top-right::after {
            border-top-color: transparent;
            border-right-color: transparent;
        }

        .ribbon-top-right::before {
            top: 0;
            left: 0;
        }

        .ribbon-top-right::after {
            bottom: 0;
            right: 0;
        }

        .ribbon-top-right span {
            left: -25px;
            top: 30px;
            transform: rotate(45deg);
        }

        /* bottom left*/
        .ribbon-bottom-left {
            bottom: -10px;
            left: -10px;
        }

        .ribbon-bottom-left::before,
        .ribbon-bottom-left::after {
            border-bottom-color: transparent;
            border-left-color: transparent;
        }

        .ribbon-bottom-left::before {
            bottom: 0;
            right: 0;
        }

        .ribbon-bottom-left::after {
            top: 0;
            left: 0;
        }

        .ribbon-bottom-left span {
            right: -25px;
            bottom: 30px;
            transform: rotate(225deg);
        }

        /* bottom right*/
        .ribbon-bottom-right {
            bottom: -10px;
            right: -10px;
        }

        .ribbon-bottom-right::before,
        .ribbon-bottom-right::after {
            border-bottom-color: transparent;
            border-right-color: transparent;
        }

        .ribbon-bottom-right::before {
            bottom: 0;
            left: 0;
        }

        .ribbon-bottom-right::after {
            top: 0;
            right: 0;
        }

        .ribbon-bottom-right span {
            left: -25px;
            bottom: 30px;
            transform: rotate(-225deg);
        }
    </style>

</head>
