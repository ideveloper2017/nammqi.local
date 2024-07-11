<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <!-- Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

        <!-- CSS Library-->
        <style>
            :root {
                --color-1st: {{ theme_option('primary_color', '#bead8e') }};
                --primary-font: '{{ theme_option('primary_font', 'Roboto') }}', sans-serif;
            }
        </style>
        {!! Theme::header() !!}
        <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
        <!--WARNING: Respond.js doesn't work if you view the page via file://-->
        <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->

    </head>
    <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
    <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
    <body id="scroll-top">
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
{{--        <table class="loader">--}}
{{--            <tr>--}}
{{--                <td>--}}
{{--                    <div class="spinner">--}}
{{--                        <div class="rect1"></div>--}}
{{--                        <div class="rect2"></div>--}}
{{--                        <div class="rect3"></div>--}}
{{--                        <div class="rect4"></div>--}}
{{--                        <div class="rect5"></div>--}}
{{--                        <div class="rect6"></div>--}}
{{--                    </div>--}}
{{--                </td>--}}
{{--            </tr>--}}
{{--        </table>--}}
        <header class="header-two">
            <div class="header-top">
                <div class="container">
                    <ul class="left">
                        <li><span><i class="fa fa-address-book" aria-hidden="true"></i></span> {{ theme_option('address') }}</li>
                        <li><span><i class="fa fa-phone" aria-hidden="true"></i></span> {{ theme_option('phone') }}</li>
{{--                        <li><span><i class="fa fa-email" aria-hidden="true"></i></span> {{ theme_option('email') }}</li>--}}
                    </ul>


                    <ul class="right">
                        <li><i class="fa fa-registered" aria-hidden="true"></i> <a href="http://virtualtour.nammqi.uz">{{__('VirtualTour')}}</a></li>
                        <li>|</li>
                        <li><i class="fa fa-globe" aria-hidden="true"></i><a href="/gosudarstvennye-simvoly"> {{__('Davlat ramzlari')}}</a></li>
                         <li>|</li>
                         <li style="color: #3F7E44;
    position: relative;
    right: 15px;
    animation: pulsate 1.5s linear infinite;
    text-shadow: 0 0 1px #39e90d, 0 0 2px #39e90d, 0 0 3px #39e90d, 0 0 4px #39e90d, 0 0 8px #39e90d, 0 0 9px #39e90d, 0 0 10px #39e90d, 0 0 15px #39e90d;"><i class="fa fa-globe" aria-hidden="true" ></i><a href="https://sdg.nammqi.uz/"> {{__('SGDS')}}</a></li>
                                {!! apply_filters('language_switcher') !!}
                    </ul>
                </div><!-- container -->
            </div><!-- header top -->
            <div class="header-middle">
                <div class="container">
                    <div class="row">

                        <div class="col-md-4 col-sm-4 col-xs-4">
                            <a href="{{ route('public.single') }}" class="page-logo">
                                @if (theme_option('logo'))
                                    <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}" height="50" style="margin-top:7%;">
                                @endif
                            </a>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-4">
                            @if (is_plugin_active('blog'))
                            <form action="{{ route('public.search') }}">
                                        <input type="search" name="q" placeholder="{{ __('Type to search...') }}" class="form-control search-input" autocomplete="off">
                                        <button><i class="fa fa-search" aria-hidden="true"></i></button>
                            </form>
                          @endif

                        </div>
                    </div>
                </div><!-- container -->
            </div>
            <div class="main-menu">
                <nav class="navbar ">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                        </div>

                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                            {!!
                             Menu::renderMenuLocation('main-menu', [
                            'options' => ['class' => 'nav navbar-nav'],
                            'view'    => 'main-menu',
                               ])
                            !!}
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container -->
                </nav>
            </div><!-- main menu -->
        </header>

