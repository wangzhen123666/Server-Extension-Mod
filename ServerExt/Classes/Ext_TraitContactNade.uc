Class Ext_TraitContactNade extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bExplodeOnContact = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bExplodeOnContact = false;
}

defaultproperties
{
	TraitName="������ը"
	DefLevelCosts(0)=25
	Description="ʹըҩ�Ӵ���ɥʬֱ�ӱ�ը��"
}