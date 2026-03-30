speed = 3
image_angle = 180;
direction = obj_enemy_ship.image_angle;

if(instance_exists(obj_game)){
	var _baseHp = 3;
	var _baseDamage = 1;
	var _waveMultiplier = 1 + (obj_game.currentWave * obj_game.linearWaveMultiplier);
	show_debug_message(string("currentWave: {0}", obj_game.currentWave));
	show_debug_message(string("linearWaveMultiplier: {0}", obj_game.linearWaveMultiplier));
	show_debug_message(string("damage: {0}", damage));
	show_debug_message(string("hp: {0}", hp));
	show_debug_message(string("hp: {0}", hpMax));
	show_debug_message(string("waveMultiplier: {0}", _waveMultiplier));
	if((obj_game.currentWave % obj_game.peakWave == 0) && (obj_game.currentWave % obj_game.waveBoss) != 0){
		_waveMultiplier = 1 + (obj_game.currentWave * obj_game.peakWaveMultipier);
		show_debug_message("entrou");
	}

	hpMax = _baseHp * _waveMultiplier;
	hp = hpMax;
	damage = _baseDamage * _waveMultiplier;
	show_debug_message(string("damage: {0}", damage));
	show_debug_message(string("hp: {0}", hp));
	show_debug_message(string("hp: {0}", hpMax));
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
