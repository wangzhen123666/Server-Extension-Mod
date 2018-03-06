Class Ext_TraitDireReload extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSharpshooter(Perk).bHasDireReload = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSharpshooter(Perk).bHasDireReload = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSharpshooter'
	TraitName="恐惧装弹手"
	DefLevelCosts(0)=35
	Description="这个特性会让你在生命低于40点时，装弹速度大大提升"
}