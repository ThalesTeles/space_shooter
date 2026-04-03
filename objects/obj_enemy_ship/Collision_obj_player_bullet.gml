damageColour = c_red;
finalDamage = other.damage;
rollDamage = irandom_range(1,100);
if(rollDamage <= other.criticalRate *100){
	finalDamage = finalDamage * 2;
	damageColour = c_yellow;
}

instance_create_layer(x,y, "Instances", obj_text_damage, 
{
	damage: finalDamage,
	colour: damageColour,
});

hp -= finalDamage;

instance_destroy(other);

if(hp <= 0){
	if(instance_exists(obj_game)){
		obj_game.defeatedEnemies += 1;
	}
	
	instance_create_layer(x,y,"Instances", obj_explosion);
	
	pitchVariation = random_range(0.8, 1.2);
	audio_sound_pitch(snd_explosion, pitchVariation);
	audio_play_sound(snd_explosion,11, false);
	
	instance_destroy();
	
	if (instance_exists(obj_player)){
		
		instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_text_xp, 
		{
			xp : xpDrop,
			colour : c_blue,
		});
		
		obj_player.xp += xpDrop;
		obj_player.defeatedEnemies += 1;
		if (obj_player.xp >= obj_player.xpMax){
			audio_play_sound(snd_level_up, 12, false);
			with(obj_player){
			level += 1;
			xp -=  obj_player.xpMax;
			xpMax = obj_player.xpMax * 1.25;
			hp = hpMax;
			attributePoints += 1;			
			}
		}	
	}
} else {
	pitchVariation = random_range(0.8, 1.2);
	audio_sound_pitch(snd_enemy_ship_hit, pitchVariation);
	audio_play_sound(snd_enemy_ship_hit, 9, false);
	isBlinking = true;
	alarm[ALARM_BLINK_DURATION] = blinkingDuration;
	alarm[ALARM_BLINK] = blinkSpeed;
}


