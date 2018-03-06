class ExtWeapDef_FreezeThrower extends KFWeaponDefinition
	abstract;

static function string GetItemName()
{
    return "Super Freeze Thrower";
}
static function string GetItemDescription()
{
    return "This is a All perk version of the Freeze Thrower.";
}
defaultproperties
{
    WeaponClassPath="Niches.ExtWeap_FreezeThrower"
    ImagePath="wep_ui_cryogun_tex.UI_WeaponSelect_Cryogun"
    BuyPrice=5000
    AmmoPricePerMag=10
    EffectiveRange=80
}