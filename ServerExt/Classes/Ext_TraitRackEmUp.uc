Class Ext_TraitRackEmUp extends Ext_TraitBase;

var array<byte> ComboSize;

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkRhythmPerkBase(Perk).SetMaxRhythm(Default.ComboSize[Level-1]);
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkRhythmPerkBase(Perk).ResetRhythm();
}

defaultproperties
{
	TraitName="��������"
	DefLevelCosts(0)=10
	DefLevelCosts(1)=15
	DefLevelCosts(2)=20
	DefLevelCosts(3)=30
	DefLevelCosts(4)=50
	ComboSize.Add(5)
	ComboSize.Add(10)
	ComboSize.Add(15)
	ComboSize.Add(20)
	ComboSize.Add(25)
	NumLevels=5
	Description="ÿ�������ı�ͷ��������ְҵ�������˺� +10%.|ÿ����������˺��ӳ�:|�ȼ�1-5: +50%, +100%, +150%, +200%, +250%"
}