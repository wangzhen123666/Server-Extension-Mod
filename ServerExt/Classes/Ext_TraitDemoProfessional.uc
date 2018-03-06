Class Ext_TraitDemoProfessional extends Ext_TraitBase;

static function string GetPerkDescription()
{
	local string S;

	S = Super.GetPerkDescription();
	S $= "|������Ҫת���ȼ�: #{FF4000}1";
	return S;
}

static function bool MeetsRequirements( byte Lvl, Ext_PerkBase Perk )
{
	local int i;

	if( Perk.CurrentLevel<Default.MinLevel || Perk.CurrentPrestige<1 )
		return false;
	
	if( Lvl==0 )
	{
		i = Perk.PerkStats.Find('StatType','Reload');
		if( i>=0 )
			return (Perk.PerkStats[i].CurrentValue>=30);
	}
	
	return true;
}

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bProfessionalActive = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkDemolition(Perk).bProfessionalActive = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkDemolition'
	TraitName="����ר��"
	DefLevelCosts(0)=100
	DefMinLevel=100
	Description="��������Ͷ���ｫ�����Ƶ�. ||-����: װ���ٶ�������Ҫ��30������!"
}