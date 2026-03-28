gapHealthBar = 10;
widthHealthBar = 10;

hpPc = (hp/ hpMax) * 100;
draw_healthbar(x - sprite_xoffset - gapHealthBar, y + sprite_yoffset + gapHealthBar, 
							  x + sprite_xoffset + gapHealthBar , y + sprite_yoffset + gapHealthBar + widthHealthBar,
							  hpPc, c_gray, c_red, c_green, 0, true, true);