<?php

namespace App\Models;

use Eloquent as Model;

/**
 * Class DeliveryAddress
 * @package App\Models
 * @version December 6, 2019, 1:57 pm UTC
 *
 * @property \App\Models\User user
 * @property string description
 * @property string address
 * @property string latitude
 * @property string longitude
 * @property boolean is_default
 * @property integer user_id
 */
class CityCode extends Model
{

    public $table = 'city_codes';
    
     public $guarded = [];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'city' => 'required',
    ];
    
}
