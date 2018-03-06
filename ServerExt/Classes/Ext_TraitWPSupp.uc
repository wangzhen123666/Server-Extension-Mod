Class Ext_TraitWPSupp extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="支援兵武器装备"
	Description="支援兵初始武器将改为.|等级 1: M4 散弹枪|等级 2: 双管猎枪|等级 3: AA12|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_Shotgun_M4'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Shotgun_DoubleBarrel'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_Shotgun_AA12'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_Shotgun_M4',class'KFWeap_Shotgun_DoubleBarrel',class'KFWeap_Shotgun_AA12'))
}