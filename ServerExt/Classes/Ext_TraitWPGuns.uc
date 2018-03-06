Class Ext_TraitWPGuns extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="枪手装备武器"
	Description="枪手初始武器将改为.|等级 1: 双M1911手枪|等级 2: 双沙鹰|等级 3: 双马格南左轮|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_Pistol_DualColt1911'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Pistol_DualDeagle'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_Revolver_DualSW500'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_Pistol_DualColt1911',class'KFWeap_Pistol_DualDeagle',class'KFWeap_Revolver_DualSW500'))
}