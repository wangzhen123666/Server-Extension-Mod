Class Ext_TraitRanger extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSharpshooter(Perk).ZEDTimeStunPower = 4.f;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSharpshooter(Perk).ZEDTimeStunPower = 0.f;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSharpshooter'
	TraitGroup=class'Ext_TGroupZEDTime'
	TraitName="子弹时间-游骑兵"
	DefLevelCosts(0)=40
	Description="子弹时间使用职业武器爆头将能击晕丧尸."
}