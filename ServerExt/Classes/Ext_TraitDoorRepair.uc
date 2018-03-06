Class Ext_TraitDoorRepair extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bCanRepairDoors = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bCanRepairDoors = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSupport'
	TraitName="门维修"
	NumLevels=1
	DefLevelCosts(0)=30
	DefMinLevel=25
	Description="使你能用焊机修复门"
}