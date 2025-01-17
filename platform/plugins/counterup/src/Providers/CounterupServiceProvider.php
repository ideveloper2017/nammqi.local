<?php

namespace Botble\Counterup\Providers;

use Botble\Counterup\Models\Counterup;
use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Supports\ServiceProvider;
use Illuminate\Routing\Events\RouteMatched;

class CounterupServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/counterup')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Counterup::class, [
                'name',
            ]);
        }

        $this->app['events']->listen(RouteMatched::class, function () {
            DashboardMenu::registerItem([
                'id' => 'cms-plugins-counterup',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'plugins/counterup::counterup.name',
                'icon' => 'fa fa-list',
                'url' => route('counterup.index'),
                'permissions' => ['counterup.index'],
            ]);
        });
    }
}
