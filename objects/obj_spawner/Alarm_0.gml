enemyNum = irandom_range(minEnemies, maxEnemies);
minDistanceX = 20;
maxDistanceX = 200;

section = floor(room_height/enemyNum);

for(var i = 0 ; i <  enemyNum; i++){
	extraDistanceX = irandom_range(minDistanceX, maxDistanceX);
	minSection = (i * section) + sprite_get_yoffset(spr_enemy_ship)
	maxSection = ((i + 1) * section) - sprite_get_yoffset(spr_enemy_ship);
	
	posX = room_width + sprite_get_xoffset(spr_enemy_ship) + extraDistanceX;
	posY = irandom_range(minSection, maxSection)
	
	instance_create_layer(posX + extraDistanceX, posY, "Instances", obj_enemy_ship);
}
