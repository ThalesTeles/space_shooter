with(other){
	instance_destroy();
}

hp -= other.damage

if(hp <= 0){
	visible = false;
	with(all){
		instance_destroy()
		room_goto(gameOver)
	}
} else	{
		isBlinking = true;
		alarm[ALARM_BLINK_DURATION] = blinkingDuration;
		alarm[ALARM_BLINK] = blinkSpeed;
}