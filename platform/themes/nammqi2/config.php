<?php

use Botble\Shortcode\View\View;
use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
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
        'before' => function ($theme): void {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme' => function (Theme $theme): void {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.

            $version = get_cms_version();







            $theme->asset()->usePath()->add('vendor', 'css/vendor/bootstrap.min.css', version: $version);
            $theme->asset()->usePath()->add('slick', 'css/vendor/slick.css', version: $version);
            $theme->asset()->usePath()->add('slick-theme', 'css/vendor/slick-theme.css', version: $version);
            $theme->asset()->usePath()->add('sal', 'css/plugins/sal.css', version: $version);
            $theme->asset()->usePath()->add('feather', 'css/plugins/feather.css', version: $version);
            $theme->asset()->usePath()->add('fontawesome.min', 'css/plugins/fontawesome.min.css', version: $version);
            $theme->asset()->usePath()->add('euclid-circulara', 'css/plugins/euclid-circulara.css', version: $version);
            $theme->asset()->usePath()->add('swiper', 'css/plugins/swiper.css', version: $version);
            $theme->asset()->usePath()->add('magnify', 'css/plugins/magnify.css', version: $version);
            $theme->asset()->usePath()->add('odometer', 'css/plugins/odometer.css', version: $version);
            $theme->asset()->usePath()->add('animation', 'css/plugins/animation.css', version: $version);
            $theme->asset()->usePath()->add('bootstrap-select', 'css/plugins/bootstrap-select.min.css', version: $version);
            $theme->asset()->usePath()->add('jquery-ui', 'css/plugins/jquery-ui.css', version: $version);
            $theme->asset()->usePath()->add('magnigy-popup.min', 'css/plugins/magnigy-popup.min.css', version: $version);
            $theme->asset()->usePath()->add('plyr', 'css/plugins/plyr.css', version: $version);
            $theme->asset()->usePath()->add('style', 'css/style.css', version: $version);




            $theme->asset()->container('footer')->usePath()->add('modernizr', 'js/vendor/modernizr.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery', 'js/vendor/jquery.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap.min', 'js/vendor/bootstrap.min.js');
            $theme->asset()->container('footer')->usePath()->add('sal', 'js/vendor/sal.js');
            $theme->asset()->container('footer')->usePath()->add('swiper', 'js/vendor/swiper.js');
            $theme->asset()->container('footer')->usePath()->add('magnify.min', 'js/vendor/magnify.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery-appear', 'js/vendor/jquery-appear.js');
            $theme->asset()->container('footer')->usePath()->add('odometer', 'js/vendor/odometer.js');
            $theme->asset()->container('footer')->usePath()->add('backtotop', 'js/vendor/backtotop.js');
            $theme->asset()->container('footer')->usePath()->add('isotop', 'js/vendor/isotop.js');
            $theme->asset()->container('footer')->usePath()->add('imageloaded', 'js/vendor/imageloaded.js');
            $theme->asset()->container('footer')->usePath()->add('wow', 'js/vendor/wow.js');
            $theme->asset()->container('footer')->usePath()->add('waypoint.min', 'js/vendor/waypoint.min.js');
            $theme->asset()->container('footer')->usePath()->add('easypie', 'js/vendor/easypie.js');
            $theme->asset()->container('footer')->usePath()->add('text-type', 'js/vendor/text-type.js');
            $theme->asset()->container('footer')->usePath()->add('jquery-one-page-nav', 'js/vendor/jquery-one-page-nav.js');
            $theme->asset()->container('footer')->usePath()->add('bootstrap-select.min', 'js/vendor/bootstrap-select.min.js');
            $theme->asset()->container('footer')->usePath()->add('jquery-ui', 'js/vendor/jquery-ui.js');
            $theme->asset()->container('footer')->usePath()->add('magnify-popup.min', 'js/vendor/magnify-popup.min.js');
            $theme->asset()->container('footer')->usePath()->add('paralax-scroll', 'js/vendor/paralax-scroll.js');
            $theme->asset()->container('footer')->usePath()->add('paralax.min', 'js/vendor/paralax.min.js');
            $theme->asset()->container('footer')->usePath()->add('countdown', 'js/vendor/countdown.js');
            $theme->asset()->container('footer')->usePath()->add('plyr', 'js/vendor/plyr.js');
            $theme->asset()->container('footer')->usePath()->add('main', 'js/vendor/main.js');

//            $theme->asset()->container('footer')->usePath()->add(
//                'script',
//                'js/script.js',
//                ['jquery'],
//                version: $version
//            );

            if (function_exists('shortcode')) {
                $theme->composer(['page'], function (View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [
            'default' => function ($theme): void {
                // $theme->asset()->usePath()->add('ipad', 'css/layouts/ipad.css');
            },
        ],
    ],
];
