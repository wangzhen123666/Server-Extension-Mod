Class Ext_TraitAirborne extends Ext_TraitBase;

var array<float> HealRates;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).AirborneAgentHealRate = Default.HealRates[Level-1];
	Ext_PerkFieldMedic(Perk).AirborneAgentLevel = (Level<4 ? 1 : 2);
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).AirborneAgentLevel = 0;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkFieldMedic'
	TraitName="悬浮剂"
	DefLevelCosts(0)=20
	DefLevelCosts(1)=10
	DefLevelCosts(2)=10
	DefLevelCosts(3)=60
	HealRates(0)=0.05
	HealRates(1)=0.1
	HealRates(2)=0.2
	HealRates(3)=0.15
	NumLevels=4
	DefMinLevel=50
	Description="子弹时间给医疗兵的医疗镖带来更高治疗效果和恢复速度,|每一级给予额外的治疗提升速度。:|等级 1-3: +5%, +10%, +20%|等级 4: +15%, 但是在非子弹时间也能起作用!"
}