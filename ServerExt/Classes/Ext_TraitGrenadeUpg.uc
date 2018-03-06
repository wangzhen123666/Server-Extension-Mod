Class Ext_TraitGrenadeUpg extends Ext_TraitBase;

static function bool MeetsRequirements( byte Lvl, Ext_PerkBase Perk )
{
	if( Lvl>=1 && Perk.CurrentLevel<40 )
		return false;
	return Super.MeetsRequirements(Lvl,Perk);
}
static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( Level==1 )
		Perk.GrenadeClass = Perk.PerkGrenade;
	else if( Level==2 )
		Perk.GrenadeClass = Perk.SuperGrenade;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.GrenadeClass = Perk.Default.GrenadeClass;
}

defaultproperties
{
	TraitName="手雷升级"
	NumLevels=2
	DefLevelCosts(0)=5
	DefLevelCosts(1)=50
	Description="这个会升级到你特有的手榴弹.|等级 1: 默认职业手雷|等级 2: 职业超级手雷 (需要职业等级40购买)!"
}