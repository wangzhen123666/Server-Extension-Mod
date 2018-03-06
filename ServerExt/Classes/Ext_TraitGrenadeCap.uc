Class Ext_TraitGrenadeCap extends Ext_TraitCarryCap;

static function ApplyEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data );
static function CancelEffectOn( KFPawn_Human Player, Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data );

static function TraitActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.PerkManager.SetGrenadeCap(Default.CarryAdds[Level-1]);
}
static function TraitDeActivate( Ext_PerkBase Perk, byte Level, optional Ext_TraitDataStore Data )
{
	Perk.PerkManager.SetGrenadeCap(0);
}

defaultproperties
{
	TraitName="���ױ���"
	DefLevelCosts(0)=40
	DefLevelCosts(1)=55
	DefLevelCosts(2)=70
	DefLevelCosts(3)=90
	DefLevelCosts(4)=150
	Description="������Կ�������Я����������.|�ȼ�1-5: +1,+2,+3,+4,+5 ����"
	CarryAdds(0)=1
	CarryAdds(1)=2
	CarryAdds(2)=3
	CarryAdds(3)=4
	CarryAdds(4)=5
}