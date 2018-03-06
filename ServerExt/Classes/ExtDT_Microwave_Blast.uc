//=============================================================================
// KFDT_Microwave_Blast
//=============================================================================
// Damage caused by the microwave gun alternate fire
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class ExtDT_Microwave_Blast extends ExtDT_Microwave
	abstract
	hidedropdown;

DefaultProperties
{
	// This weapon uses radial impulses
	RadialDamageImpulse=5000
	KDamageImpulse=0
	KDeathUpKick=500.0
	KDeathVel=300

	// unreal physics momentum
	bExtraMomentumZ=True
	
	KnockdownPower=450
	StumblePower=100
	GunHitPower=50
	MeleeHitPower=50

	MicrowavePower=150

	EffectGroup=FXG_MicrowaveBlast
	//bCanObliterate=true
	//ObliterationHealthThreshold=-75
	//ObliterationDamageThreshold=100
	bCanGib=true
	GoreDamageGroup=DGT_Obliteration

	WeaponDef=class'ExtWeapDef_MicrowaveGun'
	ModifierPerkList(0)=class'KFPerk_Firebug'
}
