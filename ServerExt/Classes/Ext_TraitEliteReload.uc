Class Ext_TraitEliteReload extends Ext_TraitBase;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bTacticalReload = true;
}
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.bTacticalReload = false;
}

defaultproperties
{
	TraitName="ս��װ��"
	DefLevelCosts(0)=50
	Description="�����������Ϊ���ְҵ�����ṩ�����װ���ٶȡ�"
	DefMinLevel=50
}