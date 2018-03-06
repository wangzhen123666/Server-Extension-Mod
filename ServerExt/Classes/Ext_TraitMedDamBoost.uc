Class Ext_TraitMedDamBoost extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).HealingDamageBoostPct = 10.0f + (10.f + ((float(Level) - 1.f) * 10.f));
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).HealingDamageBoostPct = 5.0f;
}

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).bHealingDamageBoost = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).bHealingDamageBoost = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkFieldMedic'
	TraitName="רעע��"
	NumLevels=3
	DefLevelCosts(0)=40
	DefLevelCosts(1)=50
	DefLevelCosts(2)=60
	DefMinLevel=85
	Description="���ԱͶ���������ڣ��������ǵ��ƻ���10-30%. ÿ��Ч������:|�ȼ�1-3: 10%, 20%, 30%"
}