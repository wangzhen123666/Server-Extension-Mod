Class Ext_TraitWPDemo extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="������װ������"
	Description="�����ֳ�ʼ��������Ϊ.|�ȼ� 1: M79�񵯷�����|�ȼ� 2: M16M203|�ȼ� 3: RPG ���Ͳ|�ȼ� 4:  ǰ�����ȼ�������"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_GrenadeLauncher_M79'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_RocketLauncher_RPG7'))
	LevelEffects(3)=(LoadoutClasses=(class'KFWeap_AssaultRifle_M16M203',class'KFWeap_GrenadeLauncher_M79',class'KFWeap_RocketLauncher_RPG7'))
}