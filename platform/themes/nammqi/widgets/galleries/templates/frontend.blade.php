<div class="col-md-3 col-sm-6 col-xs-12">
    <div class="footer-item">
        <h4 class="title">{{ $config['name'] }}</h4>


        <ul class="photos">
            @foreach (@get_galleries($config['number_display']) as $gallery)
                <li>
                    <a href="{{ $gallery->url }}" data-animate="zoomIn" data-duration="1.5s" data-delay="0.1s"><img class="border-radius-5" src="{{ RvMedia::getImageUrl($gallery->image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $gallery->name }}"></a>
                </li>
            @endforeach
        </ul>
    </div>
</div>
