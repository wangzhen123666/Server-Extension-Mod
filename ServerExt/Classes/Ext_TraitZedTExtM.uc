Class Ext_TraitZedTExtM extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkRhythmPerkBase(Perk).ZTExtCountSub = Level;
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkRhythmPerkBase(Perk).ZTExtCountSub = Level;
}


// Decompiled with UE Explorer.
defaultproperties
{
    TraitName="�ӵ�ʱ����ʱ-С"
    Description="ְҵ�����ӵ�ʱ����ʱ. ���ӵ�ʱ�������Եȼ�����"
    NumLevels=4
    DefLevelCosts(0)=15
    DefLevelCosts(1)=30
    DefLevelCosts(2)=40
    DefLevelCosts(3)=50
    DefMinLevel=15
}