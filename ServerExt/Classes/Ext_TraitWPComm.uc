Class Ext_TraitWPComm extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="ͻ����װ������"
	Description="ͻ������ʼ��������Ϊ.|�ȼ� 1: AK12|�ȼ� 2: SCAR|�ȼ� 3: STONER|�ȼ� 4: ǰ�����ȼ�������"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_SCAR'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_LMG_Stoner63A'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_LMG_Stoner63A',class'KFWeap_AssaultRifle_AK12',class'KFWeap_AssaultRifle_SCAR'))
}