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
	TraitName="额外火力范围"
	DefLevelCosts(0)=35
	Description="添加火焰喷射器一些额外的火力范围"
}