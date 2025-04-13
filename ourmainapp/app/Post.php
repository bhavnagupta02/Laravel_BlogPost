<?php
 // Added by BGU
namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    //
    /**
     * To store Blog Posts related data into db tabe.
     *
     * @var array
     */
    protected $fillable = ['user_id', 'post_title', 'post_content',];

    public function getUserDetail() {
        return $this->belongsTo(User::class, 'user_id');
    }
}
