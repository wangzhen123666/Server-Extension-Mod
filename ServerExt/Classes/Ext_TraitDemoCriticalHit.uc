Class Ext_TraitDemoCriticalHit extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bCriticalHit = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bCriticalHit = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkDemolition'
	TraitName="���׵�"
	DefLevelCosts(0)=100
	DefMinLevel=50
	Description="��������������Ҫ���㽫���50%�˺��ӳ�"
}