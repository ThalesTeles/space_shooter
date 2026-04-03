if(DEBUG){
	text = [
    string("Fps: {0}", fps),
    string("instances: {0}", instance_count),
    instance_exists(obj_game) ? string("Current Wave: {0}", obj_game.currentWave) : "obj_game missing",
    instance_exists(obj_game) ? string("Defeated Enemies(wave): {0}", obj_game.defeatedEnemies) : "obj_game missing",
    instance_exists(obj_game) ? string("Meta Enemies Wave: {0}", obj_game.metaWaveEnemies) : "obj_game missing",
    instance_exists(obj_game) ? string("Boss Wave: {0}", obj_game.waveBoss) : "obj_game missing",
	instance_exists(obj_game) ? string("Base Linear Wave Multiplier: {0}", obj_game.linearWaveMultiplier) : "obj_game missing",
	instance_exists(obj_game) ? string("Base Peak Wave Multiplier: {0}", obj_game.peakWaveMultiplier) : "obj_game missing",
	instance_exists(obj_enemy_ship) ? string("Current Wave Multiplier: {0}", obj_enemy_ship.waveMultiplier) : "obj_enemy_ship missing",
	instance_exists(obj_spawner) ? string("Is Boss Wave: {0}", obj_spawner.isBossWave) : "obj_spawner missing" ,
    instance_exists(obj_spawner) ? string("Base Spawn Time: {0}", obj_spawner.spawnTime) : "obj_spawner missing",
    instance_exists(obj_spawner) ? string("Frames to Next Enemy: {0}", obj_spawner.alarm[ALARM_SPAWNER]) : "obj_spawner missing",
	instance_exists(obj_player) ? string("Player Base Hp: {0}", obj_player.baseHp) : "obj_player missing" ,
    instance_exists(obj_player) ? string("Player Hp: {0}", obj_player.hp) : "obj_player missing",
    instance_exists(obj_player) ? string("Player HpMax: {0}", obj_player.hpMax) : "obj_player missing",
	instance_exists(obj_player) ? string("Player Base Hp Restoration Rate: {0}", obj_player.baseHpRestorationRate) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Hp Restoration Rate: {0}", obj_player.hpRestorationRate) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Base Accelaration: {0}", obj_player.baseAccelaration) : "obj_player missing" ,
    instance_exists(obj_player) ? string("Player Accelaration: {0}", obj_player.acceleration) : "obj_player missing",
	instance_exists(obj_player) ? string("Player Accelaration Cap: {0}", obj_player.maxAcceleration) : "obj_player missing",
	instance_exists(obj_player) ? string("Player Damage: {0}", obj_player.damage) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Critical Rate: {0}", obj_player.criticalRate) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Critical Rate Cap: {0}", obj_player.maxCriticalRate) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Xp: {0}", obj_player.xp) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player XpMax: {0}", obj_player.xpMax) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Base Shoots p/ Second: {0}", game_get_speed(gamespeed_fps)/obj_player.fireRate) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Fire Rate (Frames): {0}", obj_player.fireRate) : "obj_player missing" ,
    instance_exists(obj_player) ? string("Player Cooldown Shoot: {0}", obj_player.shootCooldown) : "obj_player missing" ,
	instance_exists(obj_player) ? string("Player Defeated Enemies: {0}", obj_player.defeatedEnemies) : "obj_player missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Min Shoot Time{0}", obj_enemy_turret.minShootTime) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Base Shoot Time {0}", obj_enemy_turret.baseShootTime) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Final Shoot Time [{0}, {1}]", obj_enemy_turret.shootTime, obj_enemy_turret.shootTime + obj_enemy_turret.gapShootTime) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Decrease Shoot Time {0}", obj_enemy_turret.decreaseShootTime) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Base Bullet Speed {0}", obj_enemy_turret.baseBulletSpeed) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Bullet Speed {0}", obj_enemy_turret.bulletSpeed) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Increase Bullet Speed {0}", obj_enemy_turret.increaseBulletSpeed) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_turret) ? string("Enemy Max Bullet Speed {0}", obj_enemy_turret.maxBulletSpeed) : "obj_enemy_turret missing" ,
	instance_exists(obj_enemy_ship) ? string("Enemy Base Damage: {0}", obj_enemy_ship.baseDamage) : "obj_enemy_ship missing",
	instance_exists(obj_enemy_ship) ? string("Enemy Base Hp: {0}", obj_enemy_ship.baseHp) : "obj_enemy_ship missing",		
	instance_exists(obj_enemy_ship) ? string("Enemy Base Xp Drop: {0}", obj_enemy_ship.baseXpDrop) : "obj_enemy_ship missing",
	instance_exists(obj_enemy_ship) ? string("Enemy Hp: {0}", obj_enemy_ship.hp) : "obj_enemy_ship missing",
	instance_exists(obj_enemy_ship) ? string("Enemy Damage: {0}", obj_enemy_ship.damage) : "obj_enemy_ship missing",
	instance_exists(obj_enemy_ship) ? string("Enemy XpDrop: {0}", obj_enemy_ship.xpDrop) : "obj_enemy_ship missing",
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