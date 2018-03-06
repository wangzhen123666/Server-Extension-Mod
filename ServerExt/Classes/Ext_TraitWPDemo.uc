Class Ext_TraitWPDemo extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="爆破手装备武器"
	Description="爆破手初始武器将改为.|等级 1: M79榴弹发射器|等级 2: M16M203|等级 3: RPG 火箭筒|等级 4:  前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_GrenadeLauncher_M79'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_RocketLauncher_RPG7'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203',class'KFWeap_GrenadeLauncher_M79',class'KFWeap_RocketLauncher_RPG7'))
}