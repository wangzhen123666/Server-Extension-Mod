Class Ext_T_ArmorRegHelp extends Info
	transient;
	
var KFPawn_Human PawnOwner;
var byte RegCount;

function PostBeginPlay()
{
    PawnOwner = KFPawn_Human(Owner);
    // End:0x31
    if(PawnOwner == none)
    {
        Destroy();
    }
    // End:0x40
    else
    {
        SetTimer(9.0 + FRand(), true);
    }
    //return;    
}

function Timer()
{
	if( PawnOwner==None || PawnOwner.Health<=0 )
		Destroy();
	else if( PawnOwner.Armor<PawnOwner.MaxArmor )
	{
		PawnOwner.Armor = Min(PawnOwner.Armor+RegCount,PawnOwner.MaxArmor);
	}
}

defaultproperties
{
}