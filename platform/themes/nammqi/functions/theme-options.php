<?php

app()->booted(function () {
    theme_option()

        ->setSection([ // Set section with no field
            'title' => __('General'),
            'desc' => __('General settings'),
            'id' => 'opt-text-subsection-general',
            'subsection' => true,
            'icon' => 'fa fa-home',
        ])
        ->setSection([ // Set section with some fields
            'title' => __('Logo'),
            'desc' => __('Change logo'),
            'id' => 'opt-text-subsection-logo',
            'subsection' => true,
            'icon' => 'fa fa-image',
            'fields' => [
                [
                    'id' => 'logo',
                    'type' => 'mediaImage',
                    'label' => __('Logo'),
                    'attributes' => [
                        'name' => 'logo',
                        'value' => null,
                    ],
                ],
            ],
        ])
        ->setField([ // Set field for section
            'id' => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type' => 'text',
            'label' => __('Copyright'),
            'attributes' => [
                'name' => 'copyright',
                'value' => '© 2016 Botble Technologies. All right reserved.',
                'options' => [
                    'class' => 'form-control',
                    'placeholder' => __('Change copyright'),
                    'data-counter' => 120,
                ]
            ],
            'helper' => __('Copyright on footer of site'),
        ])
        ->setSection([
            'title'      => __('Social links'),
            'desc'       => __('Social links'),
            'id'         => 'opt-text-subsection-social-links',
            'subsection' => true,
            'icon'       => 'fa fa-share-alt',
        ])
        ->setField([
            'id'         => 'social_links',
            'section_id' => 'opt-text-subsection-social-links',
            'type'       => 'repeater',
            'label'      => __('Social links'),
            'attributes' => [
                'name'   => 'social_links',
                'value'  => null,
                'fields' => [
                    [
                        'type'       => 'text',
                        'label'      => __('Name'),
                        'attributes' => [
                            'name'    => 'social-name',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Icon'),
                        'attributes' => [
                            'name'    => 'social-icon',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('URL'),
                        'attributes' => [
                            'name'    => 'social-url',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                    [
                        'type'       => 'text',
                        'label'      => __('Total follow'),
                        'attributes' => [
                            'name'    => 'social-total-follow',
                            'value'   => null,
                            'options' => [
                                'class' => 'form-control',
                            ],
                        ],
                    ],
                ],
            ],
        ])
        ->setField([
            'id'         => 'facebook_chat_enabled',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'select',
            'label'      => __('Enable Facebook chat?'),
            'attributes' => [
                'name'    => 'facebook_chat_enabled',
                'list'    => [
                    'no'  => trans('core/base::base.no'),
                    'yes' => trans('core/base::base.yes'),
                ],
                'value'   => 'no',
                'options' => [
                    'class' => 'form-control',
                ],
            ],
            'helper'     => __('To show chat box on that website, please go to :link and add :domain to whitelist domains!',
                [
                    'domain' => Html::link(url('')),
                    'link'   => Html::link('https://www.facebook.com/' . theme_option('facebook_page_id') . '/settings/?tab=messenger_platform'),
                ]),
        ])
        ->setField([
            'id'         => 'address',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Address'),
            'attributes' => [
                'name'    => 'address',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])   ->setField([
            'id'         => 'phone',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Phone'),
            'attributes' => [
                'name'    => 'phone',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ]) ->setField([
            'id'         => 'email',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Email'),
            'attributes' => [
                'name'    => 'email',
                'value'   => null,
                'options' => [
                    'class'        => 'form-control',
                    'data-counter' => 255,
                ],
            ],
        ])
        ->setArgs(['debug' => true])

        ->setSection([
            'title'      => __('Style'),
            'desc'       => __('Style of page'),
            'id'         => 'opt-text-subsection-style',
            'subsection' => true,
            'icon'       => 'fa fa-bars',
        ])
        ->setField([
            'id'         => 'font_heading',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'googleFonts',
            'label'      => __('Font heading'),
            'attributes' => [
                'name'  => 'font_heading',
                'value' => 'Poppins',
            ],
        ])
        ->setField([
            'id'         => 'font_body',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'googleFonts',
            'label'      => __('Font body'),
            'attributes' => [
                'name'  => 'font_body',
                'value' => 'Source Sans Pro',
            ],
        ])
        ->setField([
            'id'         => 'color_primary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'color_primary',
                'value' => '#87c6e3',
            ],
        ])
        ->setField([
            'id'         => 'color_secondary',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Secondary color'),
            'attributes' => [
                'name'  => 'color_secondary',
                'value' => '#455265',
            ],
        ])
        ->setField([
            'id'         => 'color_success',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Success color'),
            'attributes' => [
                'name'  => 'color_success',
                'value' => '#76e1c6',
            ],
        ])
        ->setField([
            'id'         => 'color_danger',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Danger color'),
            'attributes' => [
                'name'  => 'color_danger',
                'value' => '#f0a9a9',
            ],
        ])
        ->setField([
            'id'         => 'color_warning',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Warning color'),
            'attributes' => [
                'name'  => 'color_warning',
                'value' => '#e6bf7e',
            ],
        ])
        ->setField([
            'id'         => 'color_info',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Info color'),
            'attributes' => [
                'name'  => 'color_info',
                'value' => '#58c1c8',
            ],
        ])
        ->setField([
            'id'         => 'color_light',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Light color'),
            'attributes' => [
                'name'  => 'color_light',
                'value' => '#F3F3F3',
            ],
        ])
        ->setField([
            'id'         => 'color_dark',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Dark color'),
            'attributes' => [
                'name'  => 'color_dark',
                'value' => '#111111',
            ],
        ])
        ->setField([
            'id'         => 'color_link',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('Link color'),
            'attributes' => [
                'name'  => 'color_link',
                'value' => '#222831',
            ],
        ])
        ->setField([
            'id'         => 'color_white',
            'section_id' => 'opt-text-subsection-style',
            'type'       => 'customColor',
            'label'      => __('White color'),
            'attributes' => [
                'name'  => 'color_white',
                'value' => '#FFFFFF',
            ],
        ])
        ->setField([
            'id'         => 'copyright',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'text',
            'label'      => __('Copyright'),
            'attributes' => [
                'name'    => 'copyright',
                'value'   => __('© :year Your Company. All right reserved.', ['year' => now()->format('Y')]),
                'options' => [
                    'class'        => 'form-control',
                    'placeholder'  => __('Change copyright'),
                    'data-counter' => 250,
                ],
            ],
            'helper'     => __('Copyright on footer of site'),
        ])

        ->setField([
            'id'         => 'primary_font',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'googleFonts',
            'label'      => __('Primary font'),
            'attributes' => [
                'name'  => 'primary_font',
                'value' => 'Roboto',
            ],
        ])
        ->setField([
            'id'         => 'primary_color',
            'section_id' => 'opt-text-subsection-general',
            'type'       => 'customColor',
            'label'      => __('Primary color'),
            'attributes' => [
                'name'  => 'primary_color',
                'value' => '#ff2b4a',
            ],
        ]);

    add_filter(THEME_FRONT_HEADER, function ($html) {
        if (theme_option('facebook_app_id')) {
            $html .= Html::meta(null, theme_option('facebook_app_id'), ['property' => 'fb:app_id'])->toHtml();
        }

        if (theme_option('facebook_admins')) {
            foreach (json_decode(theme_option('facebook_admins'), true) as $facebookAdminId) {
                if (Arr::get($facebookAdminId, '0.value')) {
                    $html .= Html::meta(null, Arr::get($facebookAdminId, '0.value'), ['property' => 'fb:admins'])
                        ->toHtml();
                }
            }
        }

        return $html;
    }, 1180);

    add_filter(THEME_FRONT_FOOTER, function ($html) {
        return $html . Theme::partial('facebook-integration');
    }, 1180);
});
