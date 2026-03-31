if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		audio_play_sound(snd_upgrade_attribute, 13, false);
		with(obj_player){
			attributePoints -= 1;
			defenseLevel += 1;
			hpMax = baseHp + baseHp * defenseLevel;
			hp = hpMax;
			hpRestorationRate = baseHpRestorationRate + baseHpRestorationRate * defenseLevel;
			}
	}
}