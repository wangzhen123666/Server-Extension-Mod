Class Ext_TraitDemoAOE extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).AOEMult = 1 + (0.20 + (((float(Level) - 1.f) * 10.f) / 100.f));
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).AOEMult = 1.0f;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkDemolition'
	TraitName="伤害范围"
	NumLevels=4
	DefLevelCosts(0)=25
	DefLevelCosts(1)=15
	DefLevelCosts(2)=30
	DefLevelCosts(3)=40
	DefMinLevel=15
	Description="增加你的爆破武器伤害范围。每一级的范围都增加了:|等级1-4: 20%, 30%, 40%, 50%"
}