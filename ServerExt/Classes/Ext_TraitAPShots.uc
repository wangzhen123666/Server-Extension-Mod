Class Ext_TraitAPShots extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).APShotMul = 1 + (0.75 + (((float(Level) - 1.f) * 75.f) / 100.f));
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).APShotMul = 0.f;
}

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bUseAPShot = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bUseAPShot = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSupport'
	TraitName="穿甲弹"
	NumLevels=4
	DefLevelCosts(0)=15
	DefLevelCosts(1)=30
	DefLevelCosts(2)=40
	DefLevelCosts(3)=50
	DefMinLevel=15
	Description="大大增加了武器穿透力！穿透强度每增加一级增加:|Lv1-4: 75%, 150%, 225%, 300%"
}