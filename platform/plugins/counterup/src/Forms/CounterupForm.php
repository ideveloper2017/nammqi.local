<?php

namespace Botble\Counterup\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Counterup\Http\Requests\CounterupRequest;
use Botble\Counterup\Models\Counterup;

class CounterupForm extends FormAbstract
{
    public function buildForm(): void
    {
       $this
            ->setupModel(new Counterup)
            ->setValidatorClass(CounterupRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('icon', 'text', [
                'label'      => 'Icon',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'fa fa-home',
                    'data-counter' => 120,
                ],
            ])
            ->add('number', 'text', [
                'label'      => 'Number',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'Number',
                    'data-counter' => 120,
                ],
            ])
            ->add('extra_text', 'text', [
                'label'      => 'Extra Text',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'Extra Text',
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
