Class Ext_TraitSupplyGren extends Ext_TraitSupply;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Ext_TraitSupplyData(Data).SpawnSupplier(Player,true);
}

defaultproperties
{
	TraitName="手雷支援"
	Description="队员在每波尸潮中可以在你这获取一次手雷补给. 同时你自己也可以获得少量经验的提升."
	
	SupplyIcon=Texture2D'UI_World_TEX.Demolitionist_Supplier_HUD'
}