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
class DeliveryAddress extends Model
{

    public $table = 'delivery_addresses';
    
     public $guarded = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'description' => 'string',
        'address' => 'string',
        'latitude' => 'double',
        'longitude' => 'double',
        'is_default' => 'boolean',
        'user_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'receiver.firstName' => 'required',
        'receiver.lastName' => 'required',
        'receiver.phone' => 'required',
        'receiver.email' => 'nullable|email',

        'pickupAddress.geoLocation' => 'nullable|array',
        'dropOffAddress.geoLocation' => 'nullable|array',
        'returnAddress.geoLocation' => 'nullable|array',
        'receiver.email' => 'nullable|email',
        
        'cod' => ['nullable', 'numeric'],
        'type' => 'nullable|exists:delivery_types,type',
        'isSameDay' => 'nullable|boolean',
    ];

    /**
     * New Attributes
     *
     * @var array
     */
    protected $appends = [
        'custom_fields',
        
    ];

    public function customFieldsValues()
    {
        return $this->morphMany('App\Models\CustomFieldValue', 'customizable');
    }

    public function getCustomFieldsAttribute()
    {
        $hasCustomField = in_array(static::class,setting('custom_field_models',[]));
        if (!$hasCustomField){
            return [];
        }
        $array = $this->customFieldsValues()
            ->join('custom_fields','custom_fields.id','=','custom_field_values.custom_field_id')
            ->where('custom_fields.in_table','=',true)
            ->get()->toArray();

        return convertToAssoc($array,'name');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function user()
    {
        return $this->belongsTo(\App\Models\User::class, 'user_id', 'id');
    }

    public function deliveryState()
    {
        return $this->belongsTo(\App\Models\DeliveryStates::class, 'delivery_state_id', 'id');
    }
    
    public function receiver()
    {
        return $this->belongsTo(\App\Models\Receiver::class, 'receiver_id', 'id');
    }

    public function pickupAddress()
    {
        return $this->belongsTo(\App\Models\Address::class, 'id', 'pickupAddress');
    }

    public function dropOffAddress()
    {
        return $this->belongsTo(\App\Models\Address::class, 'id', 'dropOffAddress');
    }

    public function returnAddress()
    {
        return $this->belongsTo(\App\Models\Address::class, 'id', 'returnAddress');
    }
}
