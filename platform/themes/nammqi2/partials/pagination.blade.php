@if ($paginator->hasPages())
    <div class="row">
        <div class="col-lg-12 mt--60">
            <nav>
                <ul class="rbt-pagination">
                    @if ($paginator->onFirstPage())
                    <li><a href="#" aria-label="Previous"><i class="feather-chevron-left"></i></a></li>
                    @else
                    <li><a href="{{ $paginator->previousPageUrl() }}"><i class="feather-chevron-left"></i></a></li>
                    @endif
                        @foreach ($elements as $element)
                            @if (is_string($element))
                                <li>
                                    <a class="page-dotted disabled" href="#" aria-disabled="true"></a>
                                </li>
                            @endif

                            @if (is_array($element))
                                @foreach ($element as $page => $url)
                                    @if ($page == $paginator->currentPage())
                                        <li class="active">
                                            <a href="#" aria-current="page">{{ $page }}</a>
                                        </li>
                                    @else
                                        <li>
                                            <a  href="{{ $url }}">{{ $page }}</a>
                                        </li>
                                    @endif
                                @endforeach
                            @endif
                        @endforeach
{{--                    <li class="active"><a href="#">2</a></li>--}}
{{--                    <li><a href="#">3</a></li>--}}
                        @if ($paginator->hasMorePages())
                          <li><a href="{{ $paginator->nextPageUrl() }}" aria-label="Next"><i class="feather-chevron-right"></i></a></li>
                        @else
                            <li><a href="#" aria-label="Next"><i class="feather-chevron-right"></i></a></li>
                        @endif
                </ul>
            </nav>
        </div>
    </div>
{{--    <nav class="box-pagination">--}}
{{--        <ul class="pagination">--}}
{{--            @if ($paginator->onFirstPage())--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link page-prev prev-page" href="#" aria-disabled="true"></a>--}}
{{--                </li>--}}
{{--            @else--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link page-prev" href="{{ $paginator->previousPageUrl() }}"></a>--}}
{{--                </li>--}}
{{--            @endif--}}
{{--            @foreach ($elements as $element)--}}
{{--                @if (is_string($element))--}}
{{--                    <li>--}}
{{--                        <a class="page-dotted disabled" href="#" aria-disabled="true"></a>--}}
{{--                    </li>--}}
{{--                @endif--}}

{{--                @if (is_array($element))--}}
{{--                    @foreach ($element as $page => $url)--}}
{{--                        @if ($page == $paginator->currentPage())--}}
{{--                            <li class="page-item">--}}
{{--                                <a class="page-link active" href="#" aria-current="page">{{ $page }}</a>--}}
{{--                            </li>--}}
{{--                        @else--}}
{{--                            <li class="page-item">--}}
{{--                                <a class="page-link" href="{{ $url }}">{{ $page }}</a>--}}
{{--                            </li>--}}
{{--                        @endif--}}
{{--                    @endforeach--}}
{{--                @endif--}}
{{--            @endforeach--}}
{{--            @if ($paginator->hasMorePages())--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link page-next" href="{{ $paginator->nextPageUrl() }}"></a>--}}
{{--                </li>--}}
{{--            @else--}}
{{--                <li class="page-item">--}}
{{--                    <a class="page-link page-next disabled" href="#" aria-disabled="true"></a>--}}
{{--                </li>--}}
{{--            @endif--}}
{{--        </ul>--}}
{{--    </nav>--}}
@endif
