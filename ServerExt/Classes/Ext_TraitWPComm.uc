Class Ext_TraitWPComm extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="突击兵装备武器"
	Description="突击兵初始武器将改为.|等级 1: AK12|等级 2: SCAR|等级 3: STONER|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_SCAR'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_LMG_Stoner63A'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_LMG_Stoner63A',class'KFWeap_AssaultRifle_AK12',class'KFWeap_AssaultRifle_SCAR'))
}