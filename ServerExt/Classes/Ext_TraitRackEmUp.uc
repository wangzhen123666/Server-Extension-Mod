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
	TraitName="连击起来"
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
	Description="每次连续的爆头都会增加职业武器的伤害 +10%.|每级增加最高伤害加成:|等级1-5: +50%, +100%, +150%, +200%, +250%"
}