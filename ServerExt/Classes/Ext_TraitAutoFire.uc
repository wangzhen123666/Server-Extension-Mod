Class Ext_TraitAutoFire extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_AutoFireHelper H;

	H = Player.Spawn(class'Ext_T_AutoFireHelper',Player);
	H.AssociatedPerkClass = Perk.BasePerk;
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_AutoFireHelper H;

	foreach Player.ChildActors(class'Ext_T_AutoFireHelper',H)
		H.Destroy();
}

defaultproperties
{
	TraitName="武器自动开火"
	DefLevelCosts(0)=50
	Description="所有职业非自动武器变自动开火."
}