Class Ext_TraitRage extends Ext_TraitBase;

var array<float> HpRates;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkBerserker(Perk).ZedTimeHpRate = Default.HpRates[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkBerserker(Perk).ZedTimeHpRate = 0;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkBerserker'
	TraitGroup=class'Ext_TGroupZEDTime'
	NumLevels=3
	DefLevelCosts(0)=20
	DefLevelCosts(1)=50
	DefLevelCosts(2)=80
	HpRates.Add(0.2)
	HpRates.Add(0.5)
	HpRates.Add(0.8)
	DefMinLevel=50
}