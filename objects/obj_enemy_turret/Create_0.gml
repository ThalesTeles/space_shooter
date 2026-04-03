if(instance_exists(obj_game)){
	decreaseShootTime = abs((baseShootTime- minShootTime)/obj_game.metaWaveEnemies);
	increaseBulletSpeed = abs((maxBulletSpeed - baseBulletSpeed)/obj_game.metaWaveEnemies);
	shootTime = max(minShootTime, baseShootTime - decreaseShootTime * (obj_game.currentWave - 1));
	bulletSpeed = min(maxBulletSpeed, baseBulletSpeed + increaseBulletSpeed * (obj_game.currentWave - 1));
}

var _gapShootTime = 0;
_gapShootTime = irandom_range(0,  gapShootTime);

alarm[ALARM_ENEMY_SHOOT] = shootTime + _gapShootTime ;