if(instance_exists(obj_player)) {
	marginText = 20;
	xpMaxWidth =  300;
	xpHeight = 20;
	xpPosX = 64;
	xpPosY = 64;
	
	xpPc = (obj_player.xp / obj_player.xpMax) *100;
	//xpCurrentWidth = xpMaxWidth * xpPc;
	
	//draw_set_colour(c_blue);
	//draw_rectangle(xpPosX, xpPosY, xpPosX + xpCurrentWidth, xpPosY + xpHeight, false);
	//draw_set_color(c_white);
	//draw_rectangle(xpPosX, xpPosY, xpPosX + xpCurrentWidth, xpPosY + xpHeight, true);
	//draw_set_halign(fa_left);
	//draw_text(xpPosX+margin/2, xpPosY + xpHeight, "NÍVEL " + string(obj_player.level));
	//draw_set_colour(c_white);
	draw_healthbar(xpPosX, xpPosY, xpPosX + xpMaxWidth, xpPosY + xpHeight, xpPc, c_white, c_aqua, c_aqua, 0, true, true);
	draw_text(xpPosX+marginText, xpPosY + xpHeight, "NÍVEL " + string(obj_player.level));
}