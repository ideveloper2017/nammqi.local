<section class="services section-bg padding-120">
    <div class="container">
        <div class="section-header"><h3>{!! clean($title) !!}</h3></div>
        <div class="row">
            @foreach($categories as $category)
                @foreach($category->posts as $post)
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="service-item">
                <div class="testimonial-image">
                    <a href="{{ $post->url }}">
                        <img src="{{ RvMedia::getImageUrl($post->image, 'small', false, RvMedia::getDefaultImage()) }}" class="img-responsive"/>
                        <h5><strong>{{ $post->name }}</strong></h5>
                    </a>
                </div>
                </div>
            </div>
                @endforeach
            @endforeach
        </div><!-- row -->
    </div><!-- container -->
</section>
