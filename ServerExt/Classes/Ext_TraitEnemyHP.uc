Class Ext_TraitEnemyHP extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.EnemyHealthRange = Level;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.EnemyHealthRange = 0;
}

defaultproperties
{
	TraitName="敌人血条"
	NumLevels=4
	DefLevelCosts(0)=25
	DefLevelCosts(1)=15
	DefLevelCosts(2)=20
	DefLevelCosts(3)=30
	Description="这个特性让你看到敌人的血条。每一级的距离都增加:|等级1-4: 7m, 10m, 15m, 20m"
}