Class Ext_PerkSWAT extends Ext_PerkBase;

var byte RepTacticalMove;
var float MoveSpeedMods[3];

replication
{
	// Things the server should send to the client.
	if ( true )
		RepTacticalMove;
}

simulated function bool GetUsingTactialReload( KFWeapon KFW )
{

	return (IsWeaponOnPerk(KFW) && bTacticalReload ? true : false);
}


simulated function float GetIronSightSpeedModifier( KFWeapon KFW )
{
	return ((RepTacticalMove>0 && IsWeaponOnPerk(KFW)) ? MoveSpeedMods[RepTacticalMove-1] : 1.f);
}

simulated function bool GetIsUberAmmoActive( KFWeapon KFW )
{
	return bRapidAssault && IsWeaponOnPerk(KFW) && WorldInfo.TimeDilation < 1.f;
}

defaultproperties
{
	PerkIcon=Texture2D'UI_PerkIcons_TEX.UI_PerkIcon_SWAT'
	DefTraitList.Add(class'Ext_TraitWPSWAT')
	DefTraitList.Add(class'Ext_TraitHeavyArmor')
	DefTraitList.Add(class'Ext_TraitTacticalMove')
	DefTraitList.Add(class'Ext_TraitEliteReload')	
	DefTraitList.Add(class'Ext_TraitSWATEnforcer')
	DefTraitList.Add(class'Ext_TraitRapidAssault')
	BasePerk=class'KFPerk_SWAT'

	PrimaryMelee=class'KFWeap_Knife_SWAT'
	PrimaryWeapon=class'KFWeap_SMG_MP7'
	PerkGrenade=class'KFProj_FlashBangGrenade'

	PrimaryWeaponDef=class'KFWeapDef_MP7'
	KnifeWeaponDef=class'KFweapDef_Knife_SWAT'
	GrenadeWeaponDef=class'KFWeapDef_Grenade_SWAT'

	AutoBuyLoadOutPath=(class'KFWeapDef_MP7', class'KFWeapDef_MP5RAS', class'KFWeapDef_P90', class'KFWeapDef_Kriss')

	MoveSpeedMods(0)=1.5
	MoveSpeedMods(1)=2.0
	MoveSpeedMods(2)=2.5
}