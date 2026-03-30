gapHealthBar = 10;
widthHealthBar = 10;

hpPc = (hp/ hpMax) * 100;
hpPc = (hp/ hpMax) * 100;
posLeft = x - sprite_xoffset - gapHealthBar;
posTop = y + sprite_yoffset + gapHealthBar;
posRight = x + sprite_xoffset + gapHealthBar;
posBottom = y + sprite_yoffset + gapHealthBar + widthHealthBar;
draw_healthbar(posLeft, posTop, posRight, posBottom,hpPc, c_gray, c_red, c_green, 0, true, true);