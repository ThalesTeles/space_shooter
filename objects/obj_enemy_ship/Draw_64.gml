
if(instance_exists(obj_game)){
	if(global.debugMode){
		gapHealthBar = 10;
		widthHealthBar = 10;

		hpPc = (hp/ hpMax) * 100;
		posLeft = x - sprite_xoffset - gapHealthBar;
		posTop = y + sprite_yoffset + gapHealthBar;
		posRight = x + sprite_xoffset + gapHealthBar;
		posBottom = y + sprite_yoffset + gapHealthBar + widthHealthBar;
		draw_healthbar(posLeft, posTop, posRight, posBottom,hpPc, c_gray, c_red, c_green, 0, true, true);
		
		draw_set_color(c_black);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);

		draw_text(posLeft + gapHealthBar, posBottom + gapHealthBar, string("{0}/{1}", hp, hpMax));

		draw_set_color(c_white);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}
}

