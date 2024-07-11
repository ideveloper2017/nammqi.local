<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these events can be overridden by package config.
    |
    */

    'events' => [

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before' => function($theme)
        {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme)
        {
            $themeInfo = json_decode(file_get_contents(dirname(__FILE__) . '/theme.json'), true);
            $version = $themeInfo['version'];


            $theme->asset()->usePath()->add('bootstrap-css', 'assets/css/bootstrap.min.css');
            $theme->asset()->usePath()->add('font-awesome', 'assets/css/font-awesome.min.css');
            $theme->asset()->usePath()->add('flaticon', 'assets/flaticon/flaticon.css');
            $theme->asset()->usePath()->add('lightcase', 'assets/flaticon/flaticon.css');
            $theme->asset()->usePath()->add('swiper-css', 'assets/css/swiper.min.css');
            $theme->asset()->usePath()->add('quick-view', 'assets/css/quick-view.css');
            $theme->asset()->usePath()->add('jquery-nstSlider', 'assets/css/jquery.nstSlider.css');
            $theme->asset()->usePath()->add('flexslider', 'assets/css/flexslider.css');
            $theme->asset()->usePath()->add('style', 'assets/css/style.css', [], [], $version);
            $theme->asset()->usePath()->add('responsive', 'assets/css/responsive.css');

            $theme->asset()->container('footer')->usePath()->add('jquery', 'assets/js/jquery-1.12.4.min.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap', 'assets/js/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('waypoints', 'assets/js/waypoints.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.counterup', 'assets/js/jquery.counterup.min.js');
            $theme->asset()->container('footer')->usePath()->add('isotope', 'assets/js/isotope.min.js');
            $theme->asset()->container('footer')->usePath()->add('lightcase', 'assets/js/lightcase.js');
            $theme->asset()->container('footer')->usePath()->add('swiper.jquery', 'assets/js/swiper.jquery.min.js');
            $theme->asset()->container('footer')->usePath()->add('circle-progress', 'assets/js/circle-progress.min.js');
            $theme->asset()->container('footer')->usePath()->add('velocity', 'assets/js/velocity.min.js');
            $theme->asset()->container('footer')->usePath()->add('quick-view', 'assets/js/quick-view.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.nstSlider', 'assets/js/jquery.nstSlider.js');
            $theme->asset()->container('footer')->usePath()->add('flexslider', 'assets/js/flexslider-min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery.easing', 'assets/js/jquery.easing.min.js');
            $theme->asset()->container('footer')->usePath()->add('custom', 'assets/js/custom.js');

            if (function_exists('shortcode')) {
                $theme->composer(['index', 'page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function (Theme $theme) {
            },
        ],
    ]
];
