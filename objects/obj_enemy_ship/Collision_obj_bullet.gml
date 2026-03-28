hp -= obj_player.damage;

if(hp <= 0){
	instance_destroy();
} else {
	if(!isBlinking) {
		isBlinking = true;
		
		alarm[ALARM_BLINK_DURATION] = blinkingDuration;
		alarm[ALARM_BLINK] = blinkSpeed;
	}
}

with(other) {
	instance_destroy();
}