enemyNum = irandom_range(3, 5);
minDistanceX = 20;
maxDistanceX = 200;

section = floor(room_height/enemyNum);

for(var _i = 0 ; _i <  enemyNum; _i++){
	extraDistanceX = irandom_range(minDistanceX, maxDistanceX);
	minSection = (_i * section) + sprite_get_yoffset(spr_enemy_ship)
	maxSection = ((_i + 1) * section) - sprite_get_yoffset(spr_enemy_ship);
	
	posX = room_width + sprite_get_xoffset(spr_enemy_ship) + extraDistanceX;
	posY = irandom_range(minSection, maxSection)
	
	instance_create_layer(posX + extraDistanceX, posY, "Instances", obj_enemy_ship);
}

alarm[ALARM_SPAWNER] = 60*5;