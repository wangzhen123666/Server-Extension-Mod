Class Ext_TraitUnCloak extends Ext_TraitBase;

var array<float> RadiusValues;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_UnCloakHelper H;
	
	H = Player.Spawn(class'Ext_T_UnCloakHelper',Player);
	if( H!=None )
		H.HandleRadius = Default.RadiusValues[Level-1];
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	local Ext_T_UnCloakHelper H;

	foreach Player.ChildActors(class'Ext_T_UnCloakHelper',H)
		H.Destroy();
}

defaultproperties
{
	TraitName="隐身探测"
	NumLevels=5
	DefLevelCosts(0)=5
	DefLevelCosts(1)=7
	DefLevelCosts(2)=10
	DefLevelCosts(3)=15
	DefLevelCosts(4)=25
	Description="每级探测潜行者范围提升:|等级1-5: 5m, 10m, 15m, 20m, 30m"
	RadiusValues.Add(500)
	RadiusValues.Add(1000)
	RadiusValues.Add(1500)
	RadiusValues.Add(2000)
	RadiusValues.Add(3000)
}