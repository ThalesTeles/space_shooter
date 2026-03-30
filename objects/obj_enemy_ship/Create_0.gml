speed = 3
image_angle = 180;
direction = obj_enemy_ship.image_angle;

if(instance_exists(obj_game)){
	var _baseHp = 3;
	var _baseDamage = 1;
	var _waveMultiplier = 1 + (obj_game.currentWave * obj_game.linearWaveMultiplier);
	
	var _peakMultiplier = 1;
	if((obj_game.currentWave % obj_game.peakWave == 0) && (obj_game.currentWave % obj_game.waveBoss) != 0){
		_peakMultiplier = obj_game.peakWaveMultipier;
	}

	hpMax = _baseHp * _waveMultiplier * _peakMultiplier;
	hp = hpMax;
	damage = _baseDamage * _waveMultiplier * _peakMultiplier;
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
