Class Ext_TraitSirenResistance extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bSirenResistance = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bSirenResistance = false;
}

defaultproperties
{
	TraitName="女妖抗性"
	DefLevelCosts(0)=50
	DefMinLevel=75
	Description="是你的所有投射物都能抵抗女妖的尖叫."
}