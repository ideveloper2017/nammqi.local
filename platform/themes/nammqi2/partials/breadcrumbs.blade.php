<div class="rbt-page-banner-wrapper">
    <div class="rbt-banner-image"></div>
    <div class="rbt-banner-content">
        <div class="rbt-banner-content-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="page-list">
                            @foreach (Theme::breadcrumb()->getCrumbs() as $i => $crumb)
                                @if ($i != (count(Theme::breadcrumb()->getCrumbs()) - 1))
                                    <li class="rbt-breadcrumb-item">
                                        <a href="{{ $crumb['url'] }}">{!! $crumb['label'] !!}</a>
                                    </li>
                                    <li> - </li>
                                @else
                                    <li class="rbt-breadcrumb-item active">{!! $crumb['label'] !!}</li>
                                @endif
                            @endforeach
                        </ul>
                        <div class=" title-wrapper">
                            <h1 class="title mb--0">{{ Theme::get('section-name') }}</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Banner Content Top  -->
    </div>
</div>


