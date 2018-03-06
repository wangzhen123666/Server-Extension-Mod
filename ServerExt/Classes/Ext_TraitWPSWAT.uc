Class Ext_TraitWPSWAT extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="SWAT武器装备"
	Description="SWAT初始武器将改为.|等级 1: MP5冲锋枪|等级 2: P90|等级 3: Kriss|等级 4: 超级 Kriss 和 Dual 9mm"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_SMG_MP5RAS'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_SMG_P90'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_SMG_Kriss'))
	LevelEffects(3)=(LoadoutClasses=(class'ExtWeap_SMG_Kriss',class'ExtWeap_Pistol_Dual9mm'))
}