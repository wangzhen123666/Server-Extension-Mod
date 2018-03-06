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
    TraitName="子弹时间延时-小"
    Description="职业增加子弹时间延时. 增加的时间随特性等级增加"
    NumLevels=4
    DefLevelCosts(0)=15
    DefLevelCosts(1)=30
    DefLevelCosts(2)=40
    DefLevelCosts(3)=50
    DefMinLevel=15
}