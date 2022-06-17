/// @description 

switch (room)
{
case rm_Game:
	draw_text(20, 20, "SCORE: " + string(score));
	draw_text(20, 40, "LIVES: ");
	var _xx = 85;
	repeat(lives)
		{
		draw_sprite(spr_lives, 0, _xx, 50);
		_xx += 20;		
		}
		if paused == true
			{
			if !surface_exists(paused_surf)
			    {
			    if paused_surf == -1
			        {
			        instance_deactivate_all(true);
			        }
			    paused_surf = surface_create(room_width, room_height);
			    surface_set_target(paused_surf);
			    draw_surface(application_surface, 0, 0);
			    surface_reset_target();
			    }
				else
			    {
			    draw_surface(paused_surf, 0, 0);
			    draw_set_alpha(0.5);
			    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			    draw_set_alpha(1);
			    draw_set_halign(fa_center);
			    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
			    draw_set_halign(fa_left);
			    }
			}
    break; 

case rm_Start:
	draw_set_halign(fa_center);
    var c = c_yellow;
    draw_text_transformed_colour(room_width / 2, 100, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 200, 
    @"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot

>>PRESS ENTER TO START<<");
    draw_set_halign(fa_left);	
    break;

case rm_Win:
    draw_set_halign(fa_center);
    var c = c_lime;
    draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
    draw_set_halign(fa_left);
    break;

case rm_GameOver:
    draw_set_halign(fa_center);
    var c = c_red;
    draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
    draw_set_halign(fa_left);
    break;
}	