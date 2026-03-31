draw_set_font(fnt_ui_player);
draw_set_color(c_white);

if(instance_exists(obj_player)) {
	marginText = 20;
	xpMaxWidth =  300;
	xpHeight = 20;
	xpPosX = 64;
	xpPosY = 64;
	
	xpPc = (obj_player.xp / obj_player.xpMax) *100;
	draw_healthbar(xpPosX, xpPosY, xpPosX + xpMaxWidth, xpPosY + xpHeight, xpPc, c_white, c_aqua, c_aqua, 0, true, true);
	draw_text(xpPosX+marginText, xpPosY + xpHeight, "Level " + string(obj_player.level));
}

draw_set_font(fnt_ui);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _waveText = "WAVE " + string(currentWave);
var _progressText = string(defeatedEnemies) + "/" + string(metaWaveEnemies);
var _posX = display_get_gui_width()/2;
var _wavePosY = 20;
var _margin = 5;
var _progressPosY = string_height(_waveText) + _margin;

draw_text(_posX, _wavePosY, _waveText);
draw_text(_posX, _progressPosY, _progressText);

draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

