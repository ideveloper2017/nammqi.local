<div class="blog padding-120">
    <div class="container">
        <div class="section-header"><h3>{{clean($title)}}</h3></div>
        <div class="blog-items">
        <div class="row">
            <div class="col-lg-12">
                @if (!empty($category))
                    <div class="blog-items">
                        <div class="row">
                            @foreach($category->posts as $post)
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="blog-item">
                                    <div class="blog-image">
                                        <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'featured', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive"></a>
                                    </div>
                                    <div class="blog-content">
                                        <h5><a href="{{ $post->url }}">{{ $post->name }}</a></h5>
                                        <p>&nbsp;</p>
                                    </div>
                                    <ul>
                                        <li><a href="#"><span class="icon flaticon-calendar"></span>{{ $post->created_at->translatedFormat('d.m.Y') }}</a></li>
{{--                                        <li><a href="#"><span class="icon flaticon-like"></span>24 Like</a></li>--}}
                                        <li><a href="#"><span class="fa fa-eye"></span>{{ number_format($post->views) }}</a></li>
                                    </ul>
                                </div><!-- blog item -->
                            </div>
                            @endforeach
                        </div>
                    </div>
                    <div class="post-module-2" style="display: none">
                        <div class="widget-header-1 position-relative mb-30  wow fadeInUp animated">
                            <h5 class="mt-5 mb-30">{{ $category->name }}</h5>
                        </div>
                        <div class="loop-list loop-list-style-1">
                            <div class="row">
                                @foreach($category->posts->take(12) as $post)
                                    {!! Theme::partial('components.post-card', compact('post')) !!}

                                @endforeach
                            </div>
                        </div>
                    </div>
                @endif
                <div class="post-module-3" style="display: none">
                    <div class="widget-header-1 position-relative mb-30">
                        <h5 class="mt-5 mb-30">{{ __('Latest posts') }}</h5>
                    </div>
                    <div class="loop-list loop-list-style-1">
                        @foreach(get_latest_posts(3, !empty($category) ? $category->posts->sortByDesc('id')->take(4)->pluck('id')->all() : [], ['slugable', 'categories', 'categories.slugable']) as $post)
                            <article class="hover-up-2 transition-normal wow fadeInUp animated">
                                {!! Theme::partial('components.post-list-item', compact('post')) !!}
                            </article>
                        @endforeach
                    </div>
                </div>
            </div>

            <div class="col-lg-4" style="display: none">
                <div class="widget-area">
   
                </div>
            </div>
        </div>
    </div>
</div>
