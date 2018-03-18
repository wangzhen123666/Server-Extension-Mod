Class Ext_PerkBerserker extends Ext_PerkBase;

var float VampRegenRate,ZedTimeMeleeAtkRate,ZedTimeHpRate;
var const	private		int			RageRadius;
var const	private		float		RageFleeDuration;
var const	private		int			RageFleeDistance;
var const	private		int			RageDialogEvent;
var const 	private 	float 		SpartanZedTimeResistance;

replication
{
	// Things the server should send to the client.
	if ( true )
		ZedTimeMeleeAtkRate;
}

simulated function ModifyMeleeAttackSpeed( out float InDuration )
{
	InDuration *= Modifiers[4];
	if( ZedTimeMeleeAtkRate<1.f && WorldInfo.TimeDilation<1.f )
		InDuration *= ZedTimeMeleeAtkRate;
}
simulated function ModifyRateOfFire( out float InRate, KFWeapon KFW )
{
	if( IsWeaponOnPerk(KFW) )
	{
		InRate *= Modifiers[4];
		if( ZedTimeMeleeAtkRate<1.f && WorldInfo.TimeDilation<1.f )
			InRate *= ZedTimeMeleeAtkRate;
	}
}

function PlayerKilled( KFPawn_Monster Victim, class<DamageType> DT )
{
	if( VampRegenRate>0 && PlayerOwner.Pawn!=None && PlayerOwner.Pawn.Health>0 && class<KFDamageType>(DT)!=None && class<KFDamageType>(DT).Default.ModifierPerkList.Find(BasePerk)>=0 )
		PlayerOwner.Pawn.HealDamage( Max(PlayerOwner.Pawn.HealthMax*VampRegenRate,1), PlayerOwner, class'KFDT_Healing', false, false );
}


function NotifyZedTimeStarted()
{
	local Pawn P;
	local KFAIController KFAIC;

	if( ZedTimeHpRate>0 && PlayerOwner.Pawn!=None )
	{
		PlayerOwner.Pawn.Health += PlayerOwner.Pawn.HealthMax * ZedTimeHpRate;
		PlayerOwner.Pawn.Health = Min( PlayerOwner.Pawn.Health, PlayerOwner.Pawn.HealthMax );

		foreach WorldInfo.AllPawns( class'Pawn', P, PlayerOwner.Pawn.Location, static.GetRageRadius() )
		{
			KFAIC = KFAIController(P.Controller);
			if( KFAIC != none )
			{
				KFAIC.DoFleeFrom( PlayerOwner.Pawn, static.GetRageFleeDuration(), static.GetRageFleeDistance(),, true );
			}
			else
			{
				continue;
			}
		}
	}
}

simulated function float GetZedTimeModifier( KFWeapon W )
{
	if( IsWeaponOnPerk( W ) )
	{
		if( ZedTimeMeleeAtkRate<1.f )
		{
			return default.SpartanZedTimeResistance;
		}
	}
}

private static function int GetRageRadius()
{
	return default.RageRadius;
}

private static function float GetRageFleeDuration()
{
	return default.RageFleeDuration;
}

private static function int GetRageFleeDistance()
{
	return default.RageFleeDistance;
}

defaultproperties
{
	PerkIcon=Texture2D'UI_PerkIcons_TEX.UI_PerkIcon_Berserker'
	DefTraitList.Add(class'Ext_TraitWPBers')
	DefTraitList.Add(class'Ext_TraitUnGrab')
	DefTraitList.Add(class'Ext_TraitVampire')
	DefTraitList.Add(class'Ext_TraitSpartan')
	DefTraitList.Add(class'Ext_TraitRage')
	DefPerkStats(15)=(bHiddenConfig=false) // Poison damage.
	BasePerk=class'KFPerk_Berserker'

	PrimaryMelee=class'KFWeap_Knife_Berserker'
	PrimaryWeapon=class'KFWeap_Blunt_Crovel'
	PerkGrenade=class'KFProj_EMPGrenade'

	PrimaryWeaponDef=class'KFWeapDef_Crovel'
	KnifeWeaponDef=class'KFweapDef_Knife_Berserker'
	GrenadeWeaponDef=class'KFWeapDef_Grenade_Berserker'

	AutoBuyLoadOutPath=(class'KFWeapDef_Crovel', class'KFWeapDef_Nailgun', class'KFWeapDef_Pulverizer', class'KFWeapDef_Eviscerator')

	ZedTimeMeleeAtkRate=1.0
	
	SpartanZedTimeResistance=10.0f
	RageRadius=650 //300
	RageFleeDuration=3.f
	RageFleeDistance=2500 //5000
	RageDialogEvent=229
}