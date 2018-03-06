//=============================================================================
// KFDT_Microwave_Beam
//=============================================================================
// Damage caused by the microwave gun primary fire
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
// John "Ramm-Jaeger" Gibson and Andrew Ladenberger
//=============================================================================

class ExtDT_Microwave_Beam extends ExtDT_Microwave
	abstract;

/** Test obliterate conditions when taking damage */
static function bool CheckObliterate(Pawn P, int Damage)
{
	return default.bCanObliterate;
}

defaultproperties
{
	WeaponDef=class'ExtWeapDef_MicrowaveGun'

	// physics impact
	RadialDamageImpulse=1000
	KDeathUpKick=1000
	KDeathVel=400
    KDamageImpulse=2000

	DoT_Type=DOT_Fire
	DoT_Duration=3.0 //5.0
	DoT_Interval=0.5
	DoT_DamageScale=1.1
	bIgnoreSelfInflictedScale=true


	BurnPower=8 //2.5
	MicrowavePower=20
	StumblePower=50

	EffectGroup=255 //None
	bCanObliterate=true
	bCanGib=true
	ModifierPerkList(0)=class'KFPerk_Firebug'
}