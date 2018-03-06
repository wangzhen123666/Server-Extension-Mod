Class Ext_TraitGrenadeSUpg extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( Level==1 )
		Perk.GrenadeClass = Perk.SuperGrenade;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.GrenadeClass = Perk.Default.GrenadeClass;
}

defaultproperties
{
	TraitName="手雷升级"
	DefLevelCosts(0)=50
	Description="这个会升级到你特有的手榴弹.|等级 1: 超级手雷"
	DefMinLevel=50
}