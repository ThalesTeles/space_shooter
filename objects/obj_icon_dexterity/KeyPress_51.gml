if(instance_exists(obj_player)){
	if(obj_player.attributePoints > 0){
		with(obj_player){
			attributePoints -= 1;
			dodgeRate += 0.05;
			fireRate += 0.02;
			dexterityLevel += 1;
			}
	}
}