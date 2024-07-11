<ul {!! clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
        <li @if ($row->has_child)    class="has-dropdown @if (!$row->parent_id) has-menu-child-item @endif {{ clean($row->css_class) }}" @endif>
            <a  @if ($row->has_child) href="#"  @else href="{{ $row->url }}" target="{{ $row->target }}" @endif >
                @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif @if ($row->title){{ $row->title }} @endif
                @if ($row->has_child) @if ($row->parent_id) <i class="feather-chevron-right"></i> @else  <i class="feather-chevron-down"></i> @endif @endif
            </a>
            @if ($row->has_child)
                {!!
                    Menu::generateMenu([
                        'menu'       => $menu,
                        'menu_nodes' => $row->child,
                        'view'       => 'main-menu',
                        'options'    => ['class' => 'submenu'],
                    ])
                !!}
            @endif
        </li>
    @endforeach
</ul>
