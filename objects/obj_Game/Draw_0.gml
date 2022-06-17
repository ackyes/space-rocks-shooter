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