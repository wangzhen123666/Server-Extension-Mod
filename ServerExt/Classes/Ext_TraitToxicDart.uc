Class Ext_TraitToxicDart extends Ext_TraitBase;

var array<int> DartDamages;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.ToxicDartDamage = Default.DartDamages[Level-1];
	Perk.bToxicDart = true;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bToxicDart = false;
}

defaultproperties
{
	TraitName="毒镖"
	DefLevelCosts(0)=25
	DefLevelCosts(1)=25
	DefLevelCosts(2)=30
	DartDamages(0)=25
	DartDamages(1)=50
	DartDamages(2)=100
	NumLevels=3
	Description="使你的治疗飞镖对丧尸的毒伤害增加:|等级 1-3: +25, +50, +100 伤害"
}