/// @description 

lives -= 1;

audio_play_sound(snd_die, 1, false);

repeat(10)
{
instance_create_layer(x, y, "Instances", obj_Debris);
}

with (obj_Game)
{
alarm[1] = room_speed;
}

instance_destroy();