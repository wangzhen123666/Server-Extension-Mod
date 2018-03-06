Class Ext_TraitWPFire extends Ext_TraitWeapons;

defaultproperties
{
	TraitName="纵火犯装备武器"
	Description="纵火犯初始武器将改为.|等级 1:龙息散弹枪|等级 2: 喷火器|等级 3: 微波枪|等级 4: 超级微波枪"
	
	LevelEffects(0)=(LoadoutClasses=(class'KFWeap_Shotgun_DragonsBreath'))
	LevelEffects(1)=(LoadoutClasses=(class'KFWeap_Flame_Flamethrower'))
	LevelEffects(2)=(LoadoutClasses=(class'KFWeap_Beam_Microwave'))
	LevelEffects(3)=(LoadoutClasses=(class'ExtWeap_Beam_Microwave'))
}