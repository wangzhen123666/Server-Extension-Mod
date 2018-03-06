Class Ext_TraitWPSharp extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="神射手武器装备"
	Description="神射手初始武器将改为.|等级 1: 中发式狙击步枪|等级 2: M14狙击步枪|等级 3: 轨道炮|等级 4: 前三个等级的武器"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_Rifle_CenterfireMB464'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Rifle_M14EBR'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_Rifle_RailGun'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_Rifle_CenterfireMB464',class'KFWeap_Rifle_M14EBR',class'KFWeap_Rifle_RailGun'))
}