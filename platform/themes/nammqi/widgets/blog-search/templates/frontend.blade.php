@if (is_plugin_active('blog'))
    <div class="sidebar-item">
        <h3 class="sidebar-title">{{ $config['name'] }}</h3>
        <form action="{{ route('public.search') }}" method="GET">
            <input type="text" name="q" value="{{ request()->query('q') }}" placeholder="{{ __('Search...') }}">
            <button type="submit"><i class="fi fa-search"></i></button>
        </form>
    </div>
@endif
