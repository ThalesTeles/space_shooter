if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		with(obj_player){
			attributePoints -= 1;
			damage	+= 5;
			criticalRate += 0.05;
			strengthLevel+= 1;
			}
	}
}