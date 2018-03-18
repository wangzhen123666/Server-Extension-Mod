Class Ext_TraitToxicDart extends Ext_TraitBase;

var array<int> DartDamages;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.ToxicDartDamage = Default.DartDamages[Level-1];
	Perk.bToxicDart = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bToxicDart = false;
}

defaultproperties
{
	DefLevelCosts(0)=25
	DefLevelCosts(1)=25
	DefLevelCosts(2)=30
	DartDamages(0)=25
	DartDamages(1)=50
	DartDamages(2)=100
	NumLevels=3
}