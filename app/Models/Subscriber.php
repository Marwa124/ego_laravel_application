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
class Subscriber extends Model
{

    public $table = 'subscribers';
    
     public $guarded = [];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'email' => 'required|email|unique:subscribers,email',
    ];

    public static $messages = [
        'email.unique' => 'email has been taken before'
    ];
    
}
