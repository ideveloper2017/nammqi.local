<?php

namespace Botble\Counterup;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('counterups');
        Schema::dropIfExists('counterups_translations');
    }
}
