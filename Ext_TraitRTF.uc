Class Ext_TraitRTF extends Ext_TraitBase;

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
    DefLevelCosts(0)=30
}