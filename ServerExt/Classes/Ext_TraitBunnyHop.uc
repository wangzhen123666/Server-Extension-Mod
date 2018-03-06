Class Ext_TraitBunnyHop extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).bHasBunnyHop = true;
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).bHasBunnyHop = false;
}

defaultproperties
{
	TraitName="兔子跳"
	DefLevelCosts(0)=50
	DefMinLevel=100
	Description="允许玩家做兔子跳跃。这意味着你不断做出成功的跳跃将继续加快移动速度。"
}