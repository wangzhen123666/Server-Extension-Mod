Class Ext_TraitRapidAssault extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bRapidAssault = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bRapidAssault = false;
}

defaultproperties
{

	TraitGroup=class'Ext_TGroupZEDTime'
	TraitName="子弹时间-快速突击"
	DefLevelCosts(0)=30
	Description="在丧尸时间中，职业武器有用之不尽的弹药，可以实时射击."
}