if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		with(obj_player){
			attributePoints -= 1;
			dodgeRate += 0.05;
			dexterityLevel += 1;
			fireRate = 60 / (4 + dexterityLevel)
			}
	}
}