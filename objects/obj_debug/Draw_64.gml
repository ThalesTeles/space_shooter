if(DEBUG){
	text = [
    string("Fps: {0}", fps),
    string("instances: {0}", instance_count),
    instance_exists(obj_game) ? string("Current Wave: {0}", obj_game.currentWave) : "obj_game missing",
    instance_exists(obj_game) ? string("Defeated Enemies(wave): {0}", obj_game.defeatedEnemies) : "-",
    instance_exists(obj_game) ? string("Meta Enemies Wave: {0}", obj_game.metaWaveEnemies) : "-",
    instance_exists(obj_game) ? string("Boss Wave Mult: {0}", obj_game.waveBoss) : "-",
    instance_exists(obj_game) ? string("Linear Wave Multiplier: {0}", obj_game.linearWaveMultiplier) : "-",
    instance_exists(obj_game) ? string("Peak Wave Multipliear: {0}", obj_game.peakWaveMultipier) : "-",
	instance_exists(obj_spawner) ? string("Is Boss Wave: {0}", obj_spawner.isBossWave) : "-" ,
    instance_exists(obj_spawner) ? string("Base Spawn Time: {0}", obj_spawner.spawnTime) : "obj_spawner missing",
    instance_exists(obj_spawner) ? string("Frames to Next Enemy: {0}", obj_spawner.alarm[ALARM_SPAWNER]) : "-",
	instance_exists(obj_player) ? string("Base Hp: {0}", obj_player.baseHp) : "-" ,
    instance_exists(obj_player) ? string("Player Hp: {0}", obj_player.hp) : "obj_player missing",
    instance_exists(obj_player) ? string("Player HpMax: {0}", obj_player.hpMax) : "-",
	instance_exists(obj_player) ? string("Base Hp Restoration Rate: {0}", obj_player.baseHpRestorationRate) : "-" ,
	instance_exists(obj_player) ? string("Player Hp Restoration Rate: {0}", obj_player.hpRestorationRate) : "-" ,
	instance_exists(obj_player) ? string("Base Accelaration: {0}", obj_player.baseAccelaration) : "-" ,
    instance_exists(obj_player) ? string("Player Accelaration: {0}", obj_player.acceleration) : "-",
	instance_exists(obj_player) ? string("Player Accelaration Cap: {0}", obj_player.maxAcceleration) : "-",
	instance_exists(obj_player) ? string("Player Damage: {0}", obj_player.damage) : "-" ,
	instance_exists(obj_player) ? string("Player Critical Rate: {0}", obj_player.criticalRate) : "-" ,
	instance_exists(obj_player) ? string("Player Critical Rate Cap: {0}", obj_player.maxCriticalRate) : "-" ,
	instance_exists(obj_player) ? string("Xp: {0}", obj_player.xp) : "-" ,
	instance_exists(obj_player) ? string("XpMax: {0}", obj_player.xpMax) : "-" ,
	instance_exists(obj_player) ? string("Base Shoots p/ Second: {0}", game_get_speed(gamespeed_fps)/obj_player.fireRate) : "-" ,
	instance_exists(obj_player) ? string("Player Fire Rate (Frames): {0}", obj_player.fireRate) : "-" ,
    instance_exists(obj_player) ? string("Player Cooldown Shoot: {0}", obj_player.shootCooldown) : "-" ,
	instance_exists(obj_player) ? string("Player Defeated Enemies: {0}", obj_player.defeatedEnemies) : "-" ,
];
	
	if(instance_exists(obj_game)){
		var _posX = obj_game.xpPosX + obj_game.xpMaxWidth + 10;
		var _posY = obj_game.xpPosY;
		var _gap = 15;
		
		draw_set_color(c_black); 
		draw_set_halign(fa_left); 
	
		for(var i = 0; i < array_length(text); i++){
			draw_text(_posX, _posY + (i *_gap), text[i]);
		}
	
		draw_set_color(c_white);
		}	
}