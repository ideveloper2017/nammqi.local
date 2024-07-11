<section class="event section-bg padding-120">
    <div class="container">
        <div class="section-header">
            <h3>{!! clean($title) !!}</h3>
        </div>
        <div class="event-items">
            <div class="row">
                @foreach($categories as $category)
                    @foreach($category->posts->take(12) as $post)
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="event-item">
                        <div class="event-image">
                            @if ($post->image)
                                <img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" alt="event image" class="img-responsive">

                            @else
                                <img src="{!! Theme::asset()->url('images/adsphoto.jpeg') !!}" alt="event image" class="img-responsive">
                             @endif
                            <div class="date">
                                <span>{{ $post->created_at->translatedFormat('d') }}</span>
                                <p>{{ $post->created_at->translatedFormat('M') }}</p>
                            </div>
                        </div>
                        <div class="event-content">
                            <h5>{{  $post->name }}</h5>
                            <ul>
                                <li><span><i class="fa fa-clock-o" aria-hidden="true"></i></span>{{ $post->created_at->translatedFormat('M d, Y') }}</li>
{{--                                <li><span><i class="fa fa-home" aria-hidden="true"></i></span>218 New Elephant Road Dhaka</li>--}}
                            </ul>
{{--                            <p>{!! $post->content !!}</p>--}}
                            <a href="{{ $post->url }}" class="button-default">{{ __('readMore') }}</a>
                        </div>
                    </div>
                </div>
                    @endforeach
                @endforeach
            </div><!-- row -->
        </div><!-- event items -->
    </div><!-- container -->
</section>
