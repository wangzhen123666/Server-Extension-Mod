Class Ext_TraitWPSWAT extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="SWAT����װ��"
	Description="SWAT��ʼ��������Ϊ.|�ȼ� 1: MP5���ǹ|�ȼ� 2: P90|�ȼ� 3: Kriss|�ȼ� 4: ���� Kriss �� Dual 9mm"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_SMG_MP5RAS'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_SMG_P90'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_SMG_Kriss'))
	LevelEffects(3)=(LoadoutClasses=(class'ExtWeap_SMG_Kriss',class'ExtWeap_Pistol_Dual9mm'))
}