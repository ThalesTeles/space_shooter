damageColour = c_red;
finalDamage = other.damage;
rollDamage = irandom_range(1,100);
if(rollDamage <= other.criticalRate *100){
	finalDamage = finalDamage * 2;
	damageColour = c_yellow;
}

instance_create_layer(x,y, "Instances", obj_damage_text, 
{
	damage: finalDamage,
	colour: damageColour,
});

hp -= finalDamage;

instance_destroy(other);

if(hp <= 0){
	instance_create_layer(x,y,"Instances", obj_explosion);
	instance_destroy();
	if (instance_exists(obj_player)){
	obj_player.xp += xpDrop;
		if (obj_player.xp >= obj_player.xpMax){
			with(obj_player){
			level += 1;
			xp -=  obj_player.xpMax;
			xpMax = obj_player.xpMax * 1.25;
			attributePoints += 1;
			}
		}	
	}
} else {
	isBlinking = true;
	alarm[ALARM_BLINK_DURATION] = blinkingDuration;
	alarm[ALARM_BLINK] = blinkSpeed;
}


