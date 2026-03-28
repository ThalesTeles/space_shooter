with(other) {
	instance_destroy();
}

hp -= obj_player.damage;

if(hp <= 0){
	instance_create_layer(x,y,"Instances", obj_explosion);
	instance_destroy();
	
	if (instance_exists(obj_player)){
	obj_player.xp += xpDrop;

	if (obj_player.xp >= obj_player.xpMax){
		obj_player.level += 1;
		obj_player.xp -=  obj_player.xpMax;
		obj_player.xpMax = obj_player.xpMax * 1.25;
		obj_player.attributePoints += 1;
	}	

}
} else {
	isBlinking = true;
	alarm[ALARM_BLINK_DURATION] = blinkingDuration;
	alarm[ALARM_BLINK] = blinkSpeed;
}

