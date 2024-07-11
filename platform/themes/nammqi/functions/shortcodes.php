<?php

use Botble\Ads\Repositories\Interfaces\AdsInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Blog\Repositories\Interfaces\CategoryInterface;
use Botble\Counterup\Repositories\Interfaces\CounterupInterface;
use Botble\PostCollection\Repositories\Interfaces\PostCollectionInterface;
use Botble\Theme\Supports\ThemeSupport;


app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();

    if (is_plugin_active('testimonial')) {
        add_shortcode('testimonial', __('Testimonial'), __('Testimonial'), function ($shortCode) {
            $testimonials = app(TestimonialInterface::class)->allBy(['status' => BaseStatusEnum::PUBLISHED]);

            return Theme::partial('shortcodes.testimonial', [
                'title'        => $shortCode->title,
                'description'  => $shortCode->description,
                'testimonials' => $testimonials,
            ]);
        });
        shortcode()->setAdminConfig('testimonial', Theme::partial('shortcodes.testimonial-admin-config'));
    }


    if (is_plugin_active('counterup')){
        add_shortcode('counterup',"CounterUp","CounterUp",function ($shortcode){
            $counters = app(CounterupInterface::class)->getModel()
                ->where('status', BaseStatusEnum::PUBLISHED)
                ->get();

            return Theme::partial('shortcodes.counterup',compact('counters'));
        });

        shortcode()->setAdminConfig('counterup',function($attributes, $content) {
            return Theme::partial('shortcodes.counterup-admin-config', compact('attributes', 'content'));
        });
    }

    add_shortcode('section-intro',"SectionIntro","SectionIntro",function ($shortcode){
//            $counters = app(CounterupInterface::class)->getModel()
//                ->where('status', BaseStatusEnum::PUBLISHED)
//                ->get();
        return Theme::partial('shortcodes.section-intro');
    });

    add_shortcode('section-intelekt',"sectionIntelect","SectionIntelect",function ($shortcode){

        return Theme::partial('shortcodes.section-intelekt');
    });


    add_shortcode('section-about',"SectionAbout","SectionAbout",function ($shortcode){
//            $counters = app(CounterupInterface::class)->getModel()
//                ->where('status', BaseStatusEnum::PUBLISHED)
//                ->get();
        return Theme::partial('shortcodes.section-about');
    });


    add_shortcode('elonlar', __('Elonlar'), __('Elonlar'), function ($shortCode) {
        $attributes = $shortCode->toArray();
        $categories = collect([]);
        for ($i = 1; $i <= 1; $i++) {
            if (!Arr::has($attributes, 'category_id_' . $i)) {
                continue;
            }
            $category = app(CategoryInterface::class)->advancedGet([
                'condition' => ['categories.id' => Arr::get($attributes, 'category_id_' . $i)],
                'take' => 1,
                'with'      => [
                    'slugable',
                    'posts' => function ($query) {
                        return $query
                            ->latest()
                            ->with(['slugable'])->orderBy('published_at','desc');
                    },
                ],
            ]);
            if ($category) {
                $categories[] = $category;
            }
        }
        $title=$shortCode->title;
        return Theme::partial('shortcodes.section-anonymons', compact('title','categories'));
    });

    shortcode()->setAdminConfig('elonlar', function ($attributes) {
        $categories = app(CategoryInterface::class)->allBy(['status' => BaseStatusEnum::PUBLISHED]);
        return Theme::partial('shortcodes.faculties-admin-config', compact('attributes','categories'));

    });

    add_shortcode('faculties', __('Faculties'), __('Faculties'), function ($shortCode) {

        $attributes = $shortCode->toArray();

        $categories = collect([]);

        for ($i = 1; $i <= 1; $i++) {
            if (!Arr::has($attributes, 'category_id_' . $i)) {
                continue;
            }

            $category = app(CategoryInterface::class)->advancedGet([
                'condition' => ['categories.id' => Arr::get($attributes, 'category_id_' . $i)],
                'take' => 1,
                'with'      => [
                    'slugable',
                    'posts' => function ($query) {
                        return $query
                            ->latest()
                            ->with(['slugable']);
                    },
                ],
            ]);

            if ($category) {
                $categories[] = $category;
            }
        }
        $title=$shortCode->title;
        return Theme::partial('shortcodes.faculties', compact('title','categories'));
    });

    shortcode()->setAdminConfig('faculties', function ($attributes) {
        $categories = app(CategoryInterface::class)->allBy(['status' => BaseStatusEnum::PUBLISHED]);

        return Theme::partial('shortcodes.faculties-admin-config', compact('attributes','categories'));
    });

    if (is_plugin_active('gallery')) {
        add_shortcode('all-galleries', __('All Galleries'), __('All Galleries'), function ($shortcode) {
            return Theme::partial('shortcodes.all-galleries', ['limit' => $shortcode->limit]);
        });

        shortcode()->setAdminConfig('all-galleries', function ($attributes, $content) {
            return Theme::partial('shortcodes.all-galleries-admin-config', compact('attributes', 'content'));
        });
    }

    if (is_plugin_active('simple-slider')) {
        add_filter("simple-slider-view-template", function () {
            return Theme::getThemeNamespace() . '::partials.shortcodes.sliders.main';
        }, 120);
    }


    if (is_plugin_active('simple-slider')) {
        add_filter(SHORTCODE_REGISTER_CONTENT_IN_ADMIN, function ($data, $key, $attributes) {
            if (!in_array($key, ['simple-slider'])) {
                return $data;
            }

            if (is_plugin_active('ads')) {
                $ads = app(AdsInterface::class)->getModel()
                    ->where('status', BaseStatusEnum::PUBLISHED)
                    ->notExpired()
                    ->get();
                $data .= Theme::partial('shortcodes.ads.config-in-admin', compact('ads', 'attributes') + ['total' => 2]);
            }

            if (is_plugin_active('newsletter')) {
                $data .= Theme::partial('shortcodes.sliders.newsletter-form-option', compact('attributes'));
            }

            return $data . Theme::partial('shortcodes.sliders.config-in-admin', compact('ads', 'attributes'));
        }, 50, 3);
    }


    if (is_plugin_active('blog')) {

        add_shortcode('blog-categories-posts', __('Blog categories posts'), __('Blog categories posts'),
            function ($shortCode) {
                $category = app(CategoryInterface::class)->findById($shortCode->category_id, ['slugable', 'posts' => function ($query) {
                        $query->with(['slugable', 'categories', 'categories.slugable'])->orderBy('created_at','desc')->limit(12);
                    }]);

                if (!$category) {
                    return null;
                }
                $title=$shortCode->title;
                return Theme::partial('shortcodes.blog-categories-posts', compact('title','category'));
            });

        shortcode()->setAdminConfig('blog-categories-posts', function ($attributes) {
            $categories = app(CategoryInterface::class)->allBy(['status' => BaseStatusEnum::PUBLISHED]);

            return Theme::partial('shortcodes.blog-categories-posts-admin-config', compact('attributes','categories'));
        });

        add_shortcode('categories-with-posts', __('Categories with Posts'), __('Categories with Posts'), function ($shortCode) {

            $attributes = $shortCode->toArray();

            $categories = collect([]);

            for ($i = 1; $i <= 3; $i++) {
                if (!Arr::has($attributes, 'category_id_' . $i)) {
                    continue;
                }

                $category = app(CategoryInterface::class)->advancedGet([
                    'condition' => ['categories.id' => Arr::get($attributes, 'category_id_' . $i)],
                    'take' => 1,
                    'with'      => [
                        'slugable',
                        'posts' => function ($query) {
                            return $query
                                ->latest()
                                ->with(['slugable'])
                                ->limit(3);
                        },
                    ],
                ]);

                if ($category) {
                    $categories[] = $category;
                }
            }

            return Theme::partial('shortcodes.categories-with-posts', compact('categories'));
        });

        shortcode()->setAdminConfig('categories-with-posts', function () {
            $categories = app(CategoryInterface::class)->allBy(['status' => BaseStatusEnum::PUBLISHED]);

            return Theme::partial('shortcodes.categories-with-posts-admin-config', compact('categories'));
        });

        add_shortcode('featured-posts-slider', __('Featured posts slider'), __('Featured posts slider'), function () {
            return Theme::partial('shortcodes.featured-posts-slider');
        });

        add_shortcode('featured-posts-slider-full', __('Featured posts slider full'), __('Featured posts slider full'), function () {
            return Theme::partial('shortcodes.featured-posts-slider-full');
        });

        add_shortcode('featured-posts', __('Featured posts'), __('Featured posts'), function () {
            return Theme::partial('shortcodes.featured-posts');
        });

        add_shortcode('recent-posts', __('Recent posts'), __('Recent posts'), function ($shortcode) {
            return Theme::partial('shortcodes.recent-posts', ['title' => $shortcode->title]);
        });

        shortcode()->setAdminConfig('recent-posts', function ($attributes, $content) {
            return Theme::partial('shortcodes.recent-posts-admin-config', compact('attributes', 'content'));
        });



        add_shortcode('featured-categories-posts', __('Featured categories posts'), __('Featured categories posts'),
            function ($shortcode) {
                $with = [
                    'slugable',
                    'posts' => function ($query) {
                        $query
                            ->where('status', BaseStatusEnum::PUBLISHED)
                            ->orderBy('created_at', 'DESC');
                    },
                    'posts.slugable',
                ];

                if (is_plugin_active('language-advanced')) {
                    $with[] = 'posts.translations';
                }

                $posts = collect([]);

                if ($shortcode->category_id) {

                    $with['posts'] = function ($query) {
                        $query
                            ->where('status', BaseStatusEnum::PUBLISHED)
                            ->orderBy('created_at', 'DESC')
                            ->take(6);
                    };

                    $category = app(CategoryInterface::class)
                        ->getModel()
                        ->with($with)
                        ->where([
                            'status' => BaseStatusEnum::PUBLISHED,
                            'id'     => $shortcode->category_id,
                        ])
                        ->select([
                            'id',
                            'name',
                            'description',
                            'icon',
                        ])
                        ->first();

                    $posts = $category->posts;

                } else {
                    $categories = get_featured_categories(2, $with);

                    foreach ($categories as $category) {
                        $posts = $posts->merge($category->posts->take(3));
                    }

                    $posts = $posts->sortByDesc('created_at');
                }

                return Theme::partial('shortcodes.featured-categories-posts',
                    ['title' => $shortcode->title, 'posts' => $posts]);
            });

        shortcode()->setAdminConfig('featured-categories-posts', function ($attributes) {

            $categories = app(CategoryInterface::class)->pluck('name', 'id', ['status' => BaseStatusEnum::PUBLISHED]);

            return Theme::partial('shortcodes.featured-categories-posts-admin-config',
                compact('attributes', 'categories'));
        });

        add_shortcode('blog-list', __('Blog list'), __('Add blog posts list'), function ($shortCode) {
            $limit = $shortCode->limit ? $shortCode->limit : 12;

            $posts = get_all_posts(true, $limit);

            return Theme::partial('shortcodes.blog-list', compact('posts'));
        });

        shortcode()->setAdminConfig('blog-list', Theme::partial('shortcodes.blog-list-admin-config'));

        add_shortcode('blog-big', __('Blog big'), __('Add blog posts big'), function ($shortCode) {
            $limit = $shortCode->limit ? $shortCode->limit : 12;

            $posts = get_all_posts(true, $limit);

            return Theme::partial('shortcodes.blog-big', compact('posts'));
        });

        shortcode()->setAdminConfig('blog-big', Theme::partial('shortcodes.blog-big-admin-config'));


        //posts collection
        add_shortcode('posts-collection', __('Posts Collection'), __('Add posts collection'), function ($shortcode) {
            $postCollectionData = app(PostCollectionInterface::class)
                ->findById($shortcode->posts_collection_id, [
                    'posts' => function ($query) use ($shortcode) {
                        return $query->limit(!empty($shortcode->limit) ? (int)$shortcode->limit : 4);
                    },
                    'posts.slugable',
                ]);

            return Theme::partial('shortcodes.posts-collection', [
                'shortcode'          => $shortcode,
                'postCollectionData' => $postCollectionData,
            ]);
        });

        shortcode()->setAdminConfig('posts-collection', function ($attributes) {
            $postsCollections = app(PostCollectionInterface::class)->all();

            return Theme::partial('shortcodes.posts-collection-admin-config',
                compact('attributes', 'postsCollections'));
        });

        //categories tab posts
        add_shortcode('categories-tab-posts', __('Categories tab posts'), __('Add Categories tab posts'),
            function ($shortcode) {
                $postLimit = !empty($shortcode->limit) ? (int)$shortcode->limit : 5;
                $categoryIds = explode(',', $shortcode->categories_ids);
                $categoriesData = [];
                foreach ($categoryIds as $categoryId) {
                    $category = get_category_by_id($categoryId);
                    if (!empty($category)) {
                        $categoriesData[] = [
                            'category' => $category,
                            'posts'    => get_posts_by_category($categoryId, $postLimit),
                        ];
                    }
                }

                return Theme::partial('shortcodes.categories-tab-posts', [
                    'shortcode'      => $shortcode,
                    'categoriesData' => $categoriesData,
                ]);
            });

        shortcode()->setAdminConfig('categories-tab-posts', function ($attributes) {
            $categories = get_categories();

            return Theme::partial('shortcodes.categories-tab-posts-admin-config', compact('attributes', 'categories'));
        });


        //video posts
        add_shortcode('videos-posts', __('Video posts'), __('Add video posts'), function ($shortcode) {
            $posts = query_post([
                'format_type' => 'video',
                'limit'       => (int)($shortcode->limit ?? 7)
            ]);

            if (!empty($shortcode->toArray()['is_slider'])) {
                return Theme::partial('shortcodes.video-posts-slider', [
                    'shortcode' => $shortcode,
                    'posts'     => $posts,
                ]);
            } else {
                return Theme::partial('shortcodes.video-posts', [
                    'shortcode' => $shortcode,
                    'posts'     => $posts,
                ]);
            }
        });

        shortcode()->setAdminConfig('videos-posts', function ($attributes) {
            return Theme::partial('shortcodes.video-posts-admin-config', compact('attributes'));
        });
    }

    if (is_plugin_active('newsletter')) {
        add_shortcode('about-banner', __('About banner'), __('About banner'), function ($shortCode) {
            return Theme::partial('shortcodes.about-banner', [
                'title'           => $shortCode->title,
                'subtitle'        => $shortCode->subtitle,
                'textMuted'       => $shortCode->text_muted,
                'newsletterTitle' => $shortCode->newsletter_title,
                'image'           => $shortCode->image,
            ]);
        });

        shortcode()->setAdminConfig('about-banner', Theme::partial('shortcodes.about-banner-admin-config'));
    }

    add_shortcode('google-map', __('Google map'), __('Custom map'), function ($shortCode) {
        return Theme::partial('shortcodes.google-map', ['address' => $shortCode->content]);
    });

    shortcode()->setAdminConfig('google-map', Theme::partial('shortcodes.google-map-admin-config'));

    add_shortcode('youtube-video', __('Youtube video'), __('Add youtube video'), function ($shortCode) {
        return Theme::partial('shortcodes.youtube-video', ['url' => $shortCode->content]);
    });

    shortcode()->setAdminConfig('youtube-video', Theme::partial('shortcodes.youtube-video-admin-config'));

    if (is_plugin_active('gallery')) {
        add_shortcode('all-galleries', __('All Galleries'), __('All Galleries'), function ($shortcode) {
            return Theme::partial('shortcodes.all-galleries', ['limit' => $shortcode->limit]);
        });

        shortcode()->setAdminConfig('all-galleries', function ($attributes, $content) {
            return Theme::partial('shortcodes.all-galleries-admin-config', compact('attributes', 'content'));
        });
    }

    if (is_plugin_active('ads')) {
        add_shortcode('theme-ads', __('Theme ads'), __('Theme ads'), function ($shortCode) {
            $ads = [];
            $attributes = $shortCode->toArray();

            for ($i = 1; $i < 5; $i++) {
                if (isset($attributes['key_' . $i])) {
                    $ad = AdsManager::displayAds($attributes['key_' . $i]);
                    if ($ad) {
                        $ads[] = $ad;
                    }
                }
            }

            $ads = array_filter($ads);

            return Theme::partial('shortcodes.theme-ads', compact('ads'));
        });

        shortcode()->setAdminConfig('theme-ads', function () {
            $ads = app(AdsInterface::class)->getModel()
                ->where('status', BaseStatusEnum::PUBLISHED)
                ->notExpired()
                ->get();

            return Theme::partial('shortcodes.theme-ads-admin-config', compact('ads'));
        });
    }
});
