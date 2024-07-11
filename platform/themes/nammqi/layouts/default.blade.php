{!! Theme::partial('header') !!}
@if (Theme::get('section-name'))
    <section data-background="{{ Theme::get('breadcrumbBannerImage') ?: (theme_option('default_breadcrumb_banner_image') ? RvMedia::getImageUrl(theme_option('default_breadcrumb_banner_image')) : Theme::asset()->url('images/page-intro-02.jpg')) }}" class="section page-intro pt-50 pb-50 bg-cover">
        <div style="opacity: 0.7" class="bg-overlay"></div>
        <div class="container">
{{--            <h3 class="page-intro__title">{{ Theme::get('section-name') }}</h3>--}}
            {!! Theme::breadcrumb()->render() !!}
        </div>
    </section>
@endif
    <section class="blog blog-two padding-120">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                {!! Theme::content() !!}
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="sidebar">
                    {!! Theme::partial('sidebar') !!}
                </div>
            </div>
        </div>
    </div>
</section>
{!! Theme::partial('footer') !!}


