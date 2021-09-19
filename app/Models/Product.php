<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\Relations\HasOne;


/**
 * App\Models\Product
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $description
 * @property int $reserve
 * @property float $price
 * @property int|null $image_id
 * @method static \Illuminate\Database\Eloquent\Builder|Product newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|Product query()
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereImageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereReserve($value)
 * @method static \Illuminate\Database\Eloquent\Builder|Product whereTitle($value)
 * @mixin \Eloquent
 */
class Product extends Model
{
    use HasFactory;

    protected $table = 'product';

    /**
     * @return BelongsToMany
     */
    public function images(): BelongsToMany
    {
        return $this->belongsToMany(Image::class, ProductImage::class);
    }

    /**
     * @return BelongsToMany
     */
    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(Category::class, ProductCategory::class);
    }

    public function image(): HasOne
    {
        return $this->hasOne(Image::class, 'id','image_id')->withDefault([
            'id' => 0,
            'name' => 'plug.png',
        ]);
    }
}
