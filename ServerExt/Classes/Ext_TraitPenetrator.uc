Class Ext_TraitPenetrator extends Ext_TraitBase;

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
	
	for( i=0; i<Perk.PerkTraits.Length; ++i )
	{
		if( Perk.PerkTraits[i].TraitType==Class'Ext_TraitAPShots' )
		{
			if( Perk.PerkTraits[i].CurrentLevel <= 0 )
				return false;
			else break;
		}
	}
	
	return true;
}

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bUsePerforate = true;
}

static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_PerkSupport(Perk).bUsePerforate = false;
}

defaultproperties
{
	SupportedPerk=class'Ext_PerkSupport'
	TraitGroup=class'Ext_TGroupZEDTime'
	TraitName="�ӵ�ʱ�� - ���׵�"
	NumLevels=1
	DefLevelCosts(0)=50
	DefMinLevel=65
	Description="��ɥʬʱ���У�ְҵ�������Դ�������е��κ�Ŀ�ꡣ! ||-����: �Ƽ�������Եȼ���Ҫ������1!"
}