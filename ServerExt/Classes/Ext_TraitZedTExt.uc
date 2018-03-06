Class Ext_TraitZedTExt extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkCommando(Perk).ZTExtCount = Level;
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkCommando(Perk).ZTExtCount = Level;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkCommando'
	TraitName="�ӵ�ʱ����ʱ"
	NumLevels=10
	DefLevelCosts(0)=15
	DefLevelCosts(1)=25
	DefLevelCosts(2)=35
	DefLevelCosts(3)=45
	DefLevelCosts(4)=55
	DefLevelCosts(5)=65
	DefLevelCosts(6)=70
    	DefLevelCosts(7)=75
    	DefLevelCosts(8)=80
    	DefLevelCosts(9)=85
	DefMinLevel=15
	Description="ְҵ�����ӵ�ʱ����ʱ. ���ӵ�ʱ�������Եȼ�����"
}