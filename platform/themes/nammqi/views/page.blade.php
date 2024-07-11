@if (!BaseHelper::isHomepage($page->id))
    @php
        Theme::set('section-name', SeoHelper::getTitle());
        $page->loadMissing('metadata');

        $bannerImage = $page->getMetaData('banner_image', true);

        if ($bannerImage) {
            Theme::set('breadcrumbBannerImage', RvMedia::getImageUrl($bannerImage));
        }
    @endphp
    <section class="blog padding-120">
        <div class="container">
            <div class="row">
    @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($page)))
        {!! render_object_gallery($galleries) !!}
    @endif
    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, clean($page->content), $page) !!}
            </div>
        </div>
    </section>
@else

    @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($page)))
        {!! render_object_gallery($galleries) !!}
    @endif
    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, clean($page->content), $page) !!}
            </div>

@endif

{{--    <section class="blog blog-two padding-120" >--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                <div class="col-md-8 col-sm-12 col-xs-12">--}}
{{--                    @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($page)))--}}
{{--                        {!! render_object_gallery($galleries) !!}--}}
{{--                    @endif--}}
{{--                    {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, clean($page->content), $page) !!}--}}

{{--                    @else--}}
{{--                        @if (defined('GALLERY_MODULE_SCREEN_NAME') && !empty($galleries = gallery_meta_data($page)))--}}
{{--                            {!! render_object_gallery($galleries) !!}--}}
{{--                        @endif--}}
{{--                        {!! apply_filters(PAGE_FILTER_FRONT_PAGE_CONTENT, clean($page->content), $page) !!}--}}
{{--                    @endif--}}

{{--                </div>--}}
{{--                @if (Theme::get('section-name'))--}}
{{--                <div class="col-md-4 col-sm-12 col-xs-12">--}}
{{--                    <div class="sidebar">--}}
{{--                        {!! Theme::partial('sidebar') !!}--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                @endif--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </section>--}}

