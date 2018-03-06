Class Ext_TraitWPMedic extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="医疗兵装备武器"
	Description="医疗兵初始武器将改为.|等级 1: 医疗冲锋枪|等级 2: 医疗散弹枪|等级 3: 医疗突击步枪|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_SMG_Medic'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Shotgun_Medic'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_AssaultRifle_Medic'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_SMG_Medic',class'KFWeap_Shotgun_Medic',class'KFWeap_AssaultRifle_Medic'))
}