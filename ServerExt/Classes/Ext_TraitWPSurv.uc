Class Ext_TraitWPSurv extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="求生专家武器装备"
	Description="求生专家初始武器将改为.|等级 1: AK12|等级 2: M16M203 突击步枪|等级 3: 医疗突击步枪|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_AssaultRifle_Medic'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12',class'KFWeap_AssaultRifle_M16M203',class'KFWeap_AssaultRifle_Medic'))
}