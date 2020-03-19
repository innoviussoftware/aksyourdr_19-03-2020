<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoCallRoomDetail extends Model
{
    protected $table = 'videocall_room_detail';
    protected $fillable = [
        'from_id','to_id','room_id','created_at','updated_at','type','booking_id'
    ];

    public function from_user()
    {
        return $this->belongsTo('App\User','from_id','id');
    }

    public function to_user()
    {
        return $this->belongsTo('App\User','to_id','id');
    }

    public function getAll()
    {
        return static::get();
    }

    public function createRoom(array $attributes)
    {
        return static::create($attributes);
    }

    public function getById($id)
    {
        return static::where('id', $id)->first();
    }

    public function updateById($id, array $attributes)
    {
        return static::where('id', $id)->update($attributes);
    }

    public function deleteById($id)
    {
        return static::where('id', $id)->delete();
    }
}
