<ul {!! clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li @if ($row->has_child) class="dropdown {{ $row->css_class }}" @endif>
            <a  @if ($row->has_child) href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" @else href="{{ $row->url }}" target="{{ $row->target }}" @endif >
                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif @if ($row->title){{ $row->title }} @endif
                @if ($row->has_child) <span class="caret"></span>@endif
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'menu_nodes' => $row->child,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'dropdown-menu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
