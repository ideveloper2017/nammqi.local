<?php

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
use Botble\Member\Models\Member;

Route::group(['namespace' => 'Theme\Nammqi\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('ajax/get-panel-inner', 'NammqiController@ajaxGetPanelInner')
            ->name('theme.ajax-get-panel-inner');
        Route::get('ajax/search', 'NammqiController@getSearch')->name('public.ajax.search');
    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Nammqi\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('posts/videos', 'NammqiController@getNewsVideos')
            ->name('public.posts-videos');

        Route::get(SlugHelper::getPrefix(Member::class, 'author') . '/{slug}')
            ->uses('NammqiController@getAuthor')
            ->name('author.show');

        Route::get('/', 'NammqiController@getIndex')
            ->name('public.index');

        Route::get('sitemap.xml', 'NammqiController@getSiteMap')
            ->name('public.sitemap');

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'NammqiController@getView')
            ->name('public.single');

    });
});
