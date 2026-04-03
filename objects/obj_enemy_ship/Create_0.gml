direction = obj_enemy_ship.image_angle;

if(instance_exists(obj_game)){
	waveMultiplier = 1 + (obj_game.currentWave * obj_game.linearWaveMultiplier);
	peakMultiplier = 0;
	
	var _isBossWave =  obj_game.currentWave % obj_game.waveBoss == 0;
	if((obj_game.currentWave % obj_game.peakWave == 0) && !_isBossWave){
		peakMultiplier += obj_game.peakWaveMultiplier;
	}
	waveMultiplier += peakMultiplier;

	hpMax = baseHp * waveMultiplier;
	hp = hpMax;
	damage = baseDamage * waveMultiplier;
	xpDrop = baseXpDrop * waveMultiplier/2 
}

torreta = instance_create_layer(x,y,"Instances_Top", obj_enemy_turret,
{
	direction : image_angle,
	speed : speed,
	motherShip: id,
	image_xscale : 0.75,
	image_yscale: 0.75,
	damage : damage,
});
