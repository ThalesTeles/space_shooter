if(instance_exists(obj_player)){
	alphaCurrent = draw_get_alpha();
	valueDisplay = variable_instance_get(obj_player, attributeRef);
	
	if (obj_player.attributePoints > 0){
		blink =abs(sin(current_time / 200));
		draw_set_alpha(blink);
		draw_set_colour(colorBase);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, draw_get_colour(), blink);
	} else {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	}	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text(x - 5, y + sprite_yoffset + 10, string(valueDisplay));
}

draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_valign(fa_top);
draw_set_alpha(alphaCurrent);