Class Ext_TraitTacticalMove extends Ext_TraitBase;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSWAT(Perk).RepTacticalMove = Level;
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSWAT(Perk).RepTacticalMove = 0;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSWAT'
	TraitName="战术移动"
	NumLevels=3
	DefLevelCosts(0)=30
	DefLevelCosts(1)=35
	DefLevelCosts(2)=50
	Description="使用机械瞄准或手握职业武器蹲伏都不会有移动惩罚，等级效果提升:|等级 1-3: +30%,+50%,+100%"
}