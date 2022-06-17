/// @description 

if (keyboard_check_pressed(vk_enter))
{
switch(room)
    {
    case rm_Start:
        room_goto(rm_Game);
        break;
    case rm_Win:
    case rm_GameOver:
        game_restart();
        break;
    }
}

if room == rm_Game
{
if score >= 1000
    {
    audio_play_sound(snd_win, 1, false);
    room_goto(rm_win);
    }
if lives <= 0
    {
    audio_play_sound(snd_lose, 1, false);
    room_goto(rm_GameOver);
    }
}
//pausing game
if room == rm_Game
{
if keyboard_check_pressed(ord("P"))
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[0]++;
    alarm[1]++;
    }
}