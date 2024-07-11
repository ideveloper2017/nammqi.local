<?php

namespace Botble\Counterup\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

/**
 * @method static \Botble\Base\Models\BaseQueryBuilder<static> query()
 */
class Counterup extends BaseModel
{
    protected $table = 'counterups';

    protected $fillable = [
        'name',
        'icon',
        'number',
        'extra_text',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'name' => SafeContent::class,
    ];
}
