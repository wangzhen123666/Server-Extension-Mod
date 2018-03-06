Class Ext_TraitBoomWeld extends Ext_TraitBase
	abstract;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bExplosiveWeld = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bExplosiveWeld = false;
}

defaultproperties
{
	TraitName="爆炸焊接"
	DefLevelCosts(0)=30
	Description="使用爆炸焊接的门，丧尸触发会产生爆炸。一扇门焊接得越多，爆炸就越大。."
}