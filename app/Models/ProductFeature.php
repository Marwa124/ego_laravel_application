<?php

namespace App\Models;

use Eloquent as Model;

/**
 * Class ProductReview
 * @package App\Models
 * @version August 29, 2019, 9:38 pm UTC
 *
 * @property \App\Models\User user
 * @property \App\Models\Product product
 * @property string review
 * @property unsignedTinyInteger rate
 * @property integer user_id
 * @property integer product_id
 */
class ProductFeature extends Model
{

    public $table = 'product_features';

    public $guarded = [];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'count' => 'integer',
        'size_id' => 'integer',
        'product_id' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'size_id' => 'required|exists:sizes,id',
        'product_id' => 'required|exists:products,id',
        'count' => 'required',
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function size()
    {
        return $this->belongsTo(\App\Models\Size::class, 'size_id', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     **/
    public function product()
    {
        return $this->belongsTo(\App\Models\Product::class, 'product_id', 'id');
    }
    
}
