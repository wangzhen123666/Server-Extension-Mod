Class Ext_TraitKnockback extends Ext_TraitRagdoll;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).KnockbackResist = Default.ChanceValues[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).KnockbackResist = 1.f;
}

defaultproperties
{
	TraitName="���˿���"
	NumLevels=4
	DefLevelCosts(0)=30
	DefLevelCosts(1)=30
	DefLevelCosts(2)=40
	DefLevelCosts(3)=60
	DefMinLevel=70
	Description="����ɥʬ���˼���:|�ȼ�1-4: -20%, -40%, -60%, -80%"
	
	ChanceValues(0)=0.8
	ChanceValues(1)=0.6
	ChanceValues(2)=0.4
	ChanceValues(3)=0.2
}