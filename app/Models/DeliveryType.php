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
class DeliveryType extends Model
{

    public $table = 'delivery_types';
    
     public $guarded = [];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'state' => 'required',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function DeliveryAddresses()
    {
        return $this->hasMany(\App\Models\DeliveryAddress::class, 'delivery_state_id', 'id');
    }
    
}
