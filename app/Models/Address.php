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
class Address extends Model
{

    public $table = 'addresses';
    
    public $guarded = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'geoLocation' => 'array',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    // public function user()
    // {
    //     return $this->belongsTo(\App\Models\User::class, 'user_id', 'id');
    // }

   
    public function deliveryAddresses()
    {
        return $this->hasMany(\App\Models\DeliveryAddress::class);
    }
    
}
