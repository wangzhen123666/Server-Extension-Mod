Class Ext_TraitFireRange extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	KFPlayerReplicationInfo(Perk.PlayerOwner.PlayerReplicationInfo).bExtraFireRange = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	KFPlayerReplicationInfo(Perk.PlayerOwner.PlayerReplicationInfo).bExtraFireRange = false;
}

defaultproperties
{
	TraitName="���������Χ"
	DefLevelCosts(0)=35
	Description="��ӻ���������һЩ����Ļ�����Χ"
}