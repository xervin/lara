<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

/**
 * App\Models\ProductImage
 *
 * @property int $id
 * @property int $product_id
 * @property int $image_id
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage query()
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage whereImageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|ProductImage whereProductId($value)
 * @mixin \Eloquent
 */
class ProductImage extends Model
{
    use HasFactory;

    protected $table = 'product_image';
}
