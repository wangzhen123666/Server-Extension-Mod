Class Ext_TraitWPSurv extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="����ר������װ��"
	Description="����ר�ҳ�ʼ��������Ϊ.|�ȼ� 1: AK12|�ȼ� 2: M16M203 ͻ����ǹ|�ȼ� 3: ҽ��ͻ����ǹ|�ȼ� 4: ǰ�����ȼ�������"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_AssaultRifle_Medic'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_AssaultRifle_AK12',class'KFWeap_AssaultRifle_M16M203',class'KFWeap_AssaultRifle_Medic'))
}