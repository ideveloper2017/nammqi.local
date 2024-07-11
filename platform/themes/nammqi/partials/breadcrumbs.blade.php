
<section class="page-header">
    <div class="overlay">
        <div class="container">
            <h3>{{ Theme::get('section-name') }}</h3>
            <ul>
                @foreach (Theme::breadcrumb()->getCrumbs() as $i => $crumb)
                        @if ($i != (count(Theme::breadcrumb()->getCrumbs()) - 1))
                        <li>
                            <a href="{{ $crumb['url'] }}">{!! $crumb['label'] !!}</a>
                        </li>
                        <li> - </li>
                        @else
                            <li>{!! $crumb['label'] !!}</li>
                        @endif

                @endforeach
            </ul>
        </div>
    </div><!-- overlay -->
</section>
