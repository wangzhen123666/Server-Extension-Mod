Class Ext_TraitMedBoost extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).HealingSpeedBoostPct = 10.0f + (10.f + ((float(Level) - 1.f) * 5.f));
}

static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).HealingSpeedBoostPct = 10.0f;
}

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).bHealingBoost = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkFieldMedic(Perk).bHealingBoost = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkFieldMedic'
	TraitName="����������"
	NumLevels=5
	DefLevelCosts(0)=35
	DefLevelCosts(1)=10
	DefLevelCosts(2)=20
	DefLevelCosts(3)=30
	DefLevelCosts(4)=40
	DefMinLevel=25
	Description="���ԱͶ���������ڣ��������ǵ��ƶ��ٶ� 10% �� 50%. ÿ������Ч��:|�ȼ�1-5: 10%, 20%, 30%, 40%, 50%"
}