with(other){
	instance_destroy();
}

hp -= other.damage

if(hp <= 0){
	instance_destroy();
} else	{
		isBlinking = true;
		alarm[ALARM_BLINK_DURATION] = blinkingDuration;
		alarm[ALARM_BLINK] = blinkSpeed;
}