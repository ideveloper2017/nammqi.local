<?php

namespace Botble\Counterup\Models;

use Botble\Base\Models\BaseModel;

class CounterupTranslation extends BaseModel
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'counterups_translations';

    /**
     * @var array
     */
    protected $fillable = [
        'lang_code',
        'counterups_id',
        'name',
    ];

    /**
     * @var bool
     */
    public $timestamps = false;
}
