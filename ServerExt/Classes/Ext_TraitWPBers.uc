Class Ext_TraitWPBers extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="狂战士装备武器"
	Description="狂战士初始武器将改为.|等级 1: 武士刀|等级 2: 双手剑|等级 3: 开膛锯|等级 4: 加强版碎骨者"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_Edged_Katana'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Edged_Zweihander'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_Eviscerator'))
	LevelEffects(3)=(LoadoutClasses=(class'ExtWeap_Blunt_MaceAndShield'))
}