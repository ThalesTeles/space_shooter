with(other){
	instance_destroy();
}

hp -= other.damage

if(hp <= 0){
	visible = false;
	with(all){
		speed = 0;
	}
} else	{
		isBlinking = true;
		alarm[ALARM_BLINK_DURATION] = blinkingDuration;
		alarm[ALARM_BLINK] = blinkSpeed;
}