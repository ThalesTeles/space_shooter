if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		with(obj_player){
			attributePoints -= 1;
			hpMax += 5
			hpRestorationRate += 0.00166
			defenseLevel += 1;
			}
	}
}