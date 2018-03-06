Class Ext_TraitRagdoll extends Ext_TraitBase;

var float ChanceValues[4];

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).NoRagdollChance = Default.ChanceValues[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	if( ExtHumanPawn(Player)!=None )
		ExtHumanPawn(Player).NoRagdollChance = 0.f;
}

defaultproperties
{
	TraitName="��������"
	NumLevels=3
	DefLevelCosts(0)=30
	DefLevelCosts(1)=30
	DefLevelCosts(2)=40
	DefMinLevel=100
	Description="���ͱ���������.ÿ�����ͼ���:|�ȼ�1-3: 20%, 50%, 80%"
	
	ChanceValues(0)=0.2
	ChanceValues(1)=0.5
	ChanceValues(2)=0.8
}