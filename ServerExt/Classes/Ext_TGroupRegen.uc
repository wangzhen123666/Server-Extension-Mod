class Ext_TGroupRegen extends Ext_TGroupBase;

static function string GetUIInfo( Ext_PerkBase Perk )
{
	return Default.GroupInfo$" (最大 "$GetMaxLimit(Perk)$")";
}
static function string GetUIDesc()
{
	return Super.GetUIDesc()$"|购买额外的回复能力:|-转生等级 1 + 职业等级 50 = 最大 2 特性|-转生等级 2 + 职业等级 50 = 最大 3 特性";
}

static function bool GroupLimited( Ext_PerkBase Perk, class<Ext_TraitBase> Trait )
{
	local int i;
	local byte n;

	n = GetMaxLimit(Perk);
	for( i=0; i<Perk.PerkTraits.Length; ++i )
		if( Perk.PerkTraits[i].CurrentLevel>0 && Perk.PerkTraits[i].TraitType!=Trait && Perk.PerkTraits[i].TraitType.Default.TraitGroup==Default.Class && --n==0 )
			return true;
	return false;
}

static final function byte GetMaxLimit( Ext_PerkBase Perk )
{
	if( Perk.CurrentPrestige<1 || Perk.CurrentLevel<50 )
		return 1;
	return ((Perk.CurrentPrestige<2 || Perk.CurrentLevel<150) ? 2 : 3);
}

defaultproperties
{
	GroupInfo="恢复能力"
}