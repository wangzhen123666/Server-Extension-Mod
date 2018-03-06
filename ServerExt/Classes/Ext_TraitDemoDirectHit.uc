Class Ext_TraitDemoDirectHit extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bDirectHit = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bDirectHit = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkDemolition'
	TraitName="高冲击"
	DefLevelCosts(0)=65
	DefMinLevel=35
	Description="爆破武器将对直接命中的造成25%额外伤害。!"
}