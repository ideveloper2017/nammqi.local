@php Theme::set('section-name', __('Search result for: ') . ' "' . Request::input('q') . '"') @endphp
<section class="blog blog-two padding-120">
    <div class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
@if ($posts->count() > 0)
    @foreach ($posts as $post)


                <div class="blog-items">
                    <div class="blog-item blog-item-wide">
                        <div class="blog-image">
                            <a href="{{ $post->url }}"><img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="blog image" class="img-responsive" style="width: 370px;height:300px;"></a>
                        </div>
                        <div class="blog-content">
                            <h4><a href="{{ $post->url }}">{{ $post->name }}</a></h4>
                            <ul>
{{--                            <li><i class="fa fa-user" aria-hidden="true"></i> <a href="#">Robot Smith</a></li>--}}
                                <li><i class="fa fa-calendar" aria-hidden="true"></i> <a href="#"> {{ $post->created_at->translatedFormat('M d, Y') }}</a></li>
                            </ul>
                            <p>{{ $post->description }}</p>
                        </div>
                    </div>
                </div>



{{--            <div class="post__thumbnail">--}}
{{--                <img src="{{ RvMedia::getImageUrl($post->image, 'medium', false, RvMedia::getDefaultImage()) }}" alt="{{ $post->name }}"><a href="{{ $post->url }}" class="post__overlay"></a>--}}
{{--            </div>--}}
{{--            <div class="post__content-wrap">--}}
{{--                <header class="post__header">--}}
{{--                    <h3 class="post__title"><a href="{{ $post->url }}">{{ $post->name }}</a></h3>--}}
{{--                    <div class="post__meta"><span class="post__created-at"><i class="ion-clock"></i>{{ $post->created_at->translatedFormat('M d, Y') }}</span>--}}
{{--                        @if ($post->author->username)--}}
{{--                            <span class="post__author"><i class="ion-android-person"></i><span>{{ $post->author->name }}</span></span>--}}
{{--                        @endif--}}
{{--                        <span class="post-category"><i class="ion-cube"></i>--}}
{{--                            @if ($post->categories->first())--}}
{{--                                <a href="{{ $post->categories->first()->url }}">{{ $post->categories->first()->name }}</a>--}}
{{--                            @endif--}}
{{--                        </span>--}}
{{--                    </div>--}}
{{--                </header>--}}
{{--                <div class="post__content">--}}
{{--                    <p data-number-line="4">{{ $post->description }}</p>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </article>--}}
    @endforeach
        <div class="blog-button">
            {!! $posts->withQueryString()->links() !!}
        </div>
@else
    <div class="alert alert-warning">
        <p>{{ __('There is no data to display!') }}</p>
    </div>
@endif
        </div>
    </div>
    </div>
</section>
