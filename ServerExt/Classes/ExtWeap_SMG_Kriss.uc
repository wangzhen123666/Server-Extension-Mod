//=============================================================================
// KFWeap_SMG_Kriss
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2016 Tripwire Interactive LLC
//  - Brooks Butler
//=============================================================================

class ExtWeap_SMG_Kriss extends KFWeap_SMGBase;


// Decompiled with UE Explorer.
defaultproperties
{
	// Inventory
	InventorySize=8
	GroupPriority=100
	WeaponSelectTexture=Texture2D'WEP_UI_KRISS_TEX.UI_WeaponSelect_KRISS'

	// FOV
	MeshFOV=86
	MeshIronSightFOV=45
	PlayerIronSightFOV=75

	// Zooming/Position
	IronSightPosition=(X=15.f,Y=0.f,Z=0.0f)
	PlayerViewOffset=(X=20.f,Y=9.5f,Z=-3.0f)

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'wep_1p_kriss_mesh.Wep_1stP_KRISS_Rig'
		AnimSets(0)=AnimSet'wep_1p_kriss_anim.wep_1p_kriss_anim'
	End Object

	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'wep_3p_kriss_mesh.Wep_KRISS_Pickup'
	End Object

	AttachmentArchetype=KFWeaponAttachment'wep_kriss_arch.Wep_KRISS_3P'

	// Ammo
	MagazineCapacity[0]=50
	SpareAmmoCapacity[0]=400
	InitialSpareMags[0]=4
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=40
	minRecoilPitch=30
	maxRecoilYaw=50
	minRecoilYaw=-50
	RecoilRate=0.045
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=100
	RecoilISMinYawLimit=65435
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	IronSightMeshFOVCompensationScale=2.0
	WalkingRecoilModifier=1.0
	JoggingRecoilModifier=1.0

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_Kriss'
	FireInterval(DEFAULT_FIREMODE)=+.05 // 1200 RPM
	Spread(DEFAULT_FIREMODE)=0.015
	InstantHitDamage(DEFAULT_FIREMODE)=33.0
	FireOffset=(X=30,Y=4.5,Z=-5)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_Kriss'
	FireInterval(ALTFIRE_FIREMODE)=+.05 // 1200 RPM
	InstantHitDamage(ALTFIRE_FIREMODE)=33.0
	Spread(ALTFIRE_FIREMODE)=0.015

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Kriss'
	InstantHitDamage(BASH_FIREMODE)=26

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'wep_kriss_arch.Wep_KRISS_MuzzleFlash'

	//@todo: add akevents when we have them
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_1P_Loop')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_MedicDart.Play_WEP_SA_Medic_Dart_DryFire'

	// Advanced (High RPM) Fire Effects
	bLoopingFireAnim(DEFAULT_FIREMODE)=true
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_KRISS.Play_KRISS_Fire_1P_EndLoop')
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	AssociatedPerkClasses(0)=class'KFPerk_Swat'

}