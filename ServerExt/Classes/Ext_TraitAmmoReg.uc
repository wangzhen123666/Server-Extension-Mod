Class Ext_TraitAmmoReg extends Ext_TraitBase;

var array<float> RegenValues;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_AmmoRegHelp H;
	
	H = Player.Spawn(class'Ext_T_AmmoRegHelp',Player);
	if( H!=None )
		H.RegCount = Default.RegenValues[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_AmmoRegHelp H;

	foreach Player.ChildActors(class'Ext_T_AmmoRegHelp',H)
		H.Destroy();
}

defaultproperties
{
	TraitGroup=class'Ext_TGroupRegen'
	TraitName="�ӵ��ָ�"
	NumLevels=3
	DefLevelCosts(0)=10
	DefLevelCosts(1)=20
	DefLevelCosts(2)=40
	Description="������Խ�ÿ���ӻָ�����������:|�ȼ�1-3: 10%, 20%, 30% ��󱸵���"
	RegenValues.Add(0.10)
	RegenValues.Add(0.20)
	RegenValues.Add(0.30)
}