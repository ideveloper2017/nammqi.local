@php Theme::set('section-name', $category->name) @endphp
{{--@if ($posts->count() > 0)--}}
{{--    @foreach ($posts as $post)--}}
{{--        <article class="post post__horizontal mb-40 clearfix">--}}
{{--            <div class="post__thumbnail">--}}
{{--                <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}">--}}
{{--                <a href="{{ $post->url }}" class="post__overlay"></a>--}}
{{--            </div>--}}
{{--            <div class="post__content-wrap">--}}
{{--                <header class="post__header">--}}
{{--                    <h3 class="post__title"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>--}}
{{--                    <div class="post__meta"><span class="post__created-at"><i class="ion-clock"></i>{{ $post->created_at->translatedFormat('M d, Y') }}</span>--}}
{{--                        @if ($post->author->username)--}}
{{--                            <span class="post__author"><i class="ion-android-person"></i><span>{{ $post->author->name }}</span></span>--}}
{{--                        @endif--}}
{{--                        <span class="post-category"><i class="ion-cube"></i><a href="{{ $category->url }}">{{ $category->name }}</a></span></div>--}}
{{--                </header>--}}
{{--                <div class="post__content">--}}
{{--                    <p data-number-line="4">{{ $post->description }}</p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </article>--}}
{{--    @endforeach--}}
{{--    <div class="page-pagination text-right">--}}
{{--        {!! $posts->links() !!}--}}
{{--    </div>--}}
{{--@else--}}
{{--    <div class="alert alert-warning">--}}
{{--        <p>{{ __('There is no data to display!') }}</p>--}}
{{--    </div>--}}
{{--@endif--}}

<div class="rbt-section-overlayping-top rbt-section-gapBottom">
    <div class="container">
        <div class="row row--30 gy-5">

            <div class="col-lg-8">
                @if ($posts->count() > 0)
                <!-- Start Card Area -->
                <div class="row g-5">
                    @foreach ($posts as $post)
                    <!-- Start Single Card  -->
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="rbt-blog-grid rbt-card variation-02 rbt-hover">
                            <div class="rbt-card-img">
                                <a href="{{ $post->url }}">
                                    <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}"> </a>
                            </div>
                            <div class="rbt-card-body">
                                <h5 class="rbt-card-title"><a href="{{ $post->url }}">{{ $post->name }}</a></h5>

                                <ul class="blog-meta">
                                    <li><i class="feather-clock"></i> {{ $post->created_at->translatedFormat('M d, Y') }}</li>
                                    <li><i class="feather-watch"></i> 1 min read</li>
                                </ul>
{{--                                <p class="rbt-card-text">{{ $post->description }}</p>--}}
                                <div class="rbt-card-bottom">
                                    <a class="transparent-button" href="{{ $post->url }}">Learn
                                        More<i><svg width="17" height="12" xmlns="http://www.w3.org/2000/svg"><g stroke="#27374D" fill="none" fill-rule="evenodd"><path d="M10.614 0l5.629 5.629-5.63 5.629"/><path stroke-linecap="square" d="M.663 5.572h14.594"/></g></svg></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Card  -->
                    @endforeach
                </div>
                <!-- End Card Area -->
                    {!! $posts->withQueryString()->links(Theme::getThemeNamespace('partials.pagination')) !!}

                @endif
            </div>

            <div class="col-lg-4">
                <aside class="rbt-sidebar-widget-wrapper rbt-gradient-border">

                    <!-- Start Widget Area  -->
                    <div class="rbt-single-widget rbt-widget-search">
                        <div class="inner">
                            <form action="#" class="rbt-search-style-1">
                                <input type="text" placeholder="Search Courses">
                                <button class="search-btn"><i class="feather-search"></i></button>
                            </form>
                        </div>
                    </div>
                    <!-- End Widget Area  -->

                    <!-- Start Widget Area  -->
                    <div class="rbt-single-widget rbt-widget-recent">
                        <div class="inner">
                            <h4 class="rbt-widget-title">Recent Post</h4>
                            <ul class="rbt-sidebar-list-wrapper recent-post-list">
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-04.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Elegant Light Box Paper Cut.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Mar, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-01.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Most Effective Ways Education.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Mar, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-02.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Elegant Light Box Paper Cut.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Jan, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-03.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Top 7 Common About Education.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 May, 2024</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Widget Area  -->

                    <!-- Start Widget Area  -->
                    <div class="rbt-single-widget rbt-widget-recent">
                        <div class="inner">
                            <h4 class="rbt-widget-title">Popular Post</h4>
                            <ul class="rbt-sidebar-list-wrapper recent-post-list">
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-01.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Elegant Light Box Paper Cut.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Mar, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-06.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Most Effective Ways Education.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Mar, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-03.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Elegant Light Box Paper Cut.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 Jan, 2025</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="thumbnail">
                                        <a href="event-details.html">
                                            <img src="assets/images/event/grid-type-05.jpg" alt="Event Images">
                                        </a>
                                    </div>
                                    <div class="content">
                                        <h6 class="title"><a href="event-details.html">Top 7 Common About Education.</a></h6>
                                        <ul class="rbt-meta">
                                            <li><i class="feather-clock"></i>26 May, 2024</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Widget Area  -->

                    <!-- Start Widget Area  -->
                    <div class="rbt-single-widget rbt-widget-tag">
                        <div class="inner">
                            <h4 class="rbt-widget-title">Tags</h4>
                            <div class="rbt-sidebar-list-wrapper rbt-tag-list">
                                <a href="#">Histudy</a>
                                <a href="#">Training</a>
                                <a href="#">Courses</a>
                                <a href="#">Learn</a>
                                <a href="#">English</a>
                                <a href="#">Online</a>
                                <a href="#">Kids</a>
                                <a href="#">Economic</a>
                                <a href="#">Math</a>
                                <a href="#">Marketing</a>
                            </div>
                        </div>
                    </div>
                    <!-- End Widget Area  -->
                </aside>
            </div>

        </div>
    </div>
</div>

<div class="rbt-separator-mid">
    <div class="container">
        <hr class="rbt-separator m-0">
    </div>
</div>
