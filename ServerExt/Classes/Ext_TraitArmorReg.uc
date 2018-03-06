Class Ext_TraitArmorReg extends Ext_TraitHealthReg;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_ArmorRegHelp H;
	
	H = Player.Spawn(class'Ext_T_ArmorRegHelp',Player);
	if( H!=None )
		H.RegCount = Default.RegenValues[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_ArmorRegHelp H;

	foreach Player.ChildActors(class'Ext_T_ArmorRegHelp',H)
		H.Destroy();
}

defaultproperties
{
	TraitName="���׻ָ�"
	Description="����������Ŀ��׽�ÿ10����ٶȻظ�:|�ȼ�1-3: +10��, +15��, +25��"
	RegenValues.Empty()
	RegenValues.Add(10)
	RegenValues.Add(15)
	RegenValues.Add(25)
}