Class Ext_TraitIce_FreezeThrower extends Ext_TraitBase;

static function AddDefaultInventory( KFPawn Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Player.DefaultInventory.RemoveItem(class'ExtWeap_Pistol_9mm');
	Player.DefaultInventory.AddItem(class'ExtWeap_FreezeThrower');
}


// Decompiled with UE Explorer.
defaultproperties
{
    DefLevelCosts(0)=50
}