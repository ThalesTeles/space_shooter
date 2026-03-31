if(!isInvincible){
	
	hp -= other.damage
	if(hp <= 0){
		instance_destroy();
		
	} else	{
		isInvincible = true;
		alarm[AlARM_INVICIBILITY] = invincibilityTime;
	}
}


instance_destroy(other);
