<section class="blog padding-120">
<p class="search-result-title">{{ __('Search result') }}: </p>
@if (count($posts) > 0)
    <div class="container">
        <div class="row">
            @foreach ($posts as $post)
                <div class="col-md-4 col-sm-6 col-12">
                    <a href="{{ $post->url }}" class="squared has-image">
                        <span class="img" style="background-image: url({{ RvMedia::getImageUrl($post->image, 'thumb') }});"></span>
                        <span class="spoofer">{{ $post->name }}</span>
                        <span class="visible">{{ $post->name }}</span>
                    </a>
                </div>
            @endforeach
        </div>
    </div>
@else
    <p>{{ __('No result available for :name', ['name' => 'posts']) }}</p>
@endif
</section>
