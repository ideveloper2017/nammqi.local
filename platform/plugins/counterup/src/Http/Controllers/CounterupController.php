<?php

namespace Botble\Counterup\Http\Controllers;

use Botble\Counterup\Http\Requests\CounterupRequest;
use Botble\Counterup\Models\Counterup;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Counterup\Tables\CounterupTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Counterup\Forms\CounterupForm;
use Botble\Base\Forms\FormBuilder;

class CounterupController extends BaseController
{
    public function index(CounterupTable $table)
    {
        PageTitle::setTitle(trans('plugins/counterup::counterup.name'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('plugins/counterup::counterup.create'));

        return $formBuilder->create(CounterupForm::class)->renderForm();
    }

    public function store(CounterupRequest $request, BaseHttpResponse $response)
    {
        $counterup = Counterup::query()->create($request->input());

        event(new CreatedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

        return $response
            ->setPreviousUrl(route('counterup.index'))
            ->setNextUrl(route('counterup.edit', $counterup->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Counterup $counterup, FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('core/base::forms.edit_item', ['name' => $counterup->name]));

        return $formBuilder->create(CounterupForm::class, ['model' => $counterup])->renderForm();
    }

    public function update(Counterup $counterup, CounterupRequest $request, BaseHttpResponse $response)
    {
        $counterup->fill($request->input());

        $counterup->save();

        event(new UpdatedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

        return $response
            ->setPreviousUrl(route('counterup.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Counterup $counterup, Request $request, BaseHttpResponse $response)
    {
        try {
            $counterup->delete();

            event(new DeletedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }
}
