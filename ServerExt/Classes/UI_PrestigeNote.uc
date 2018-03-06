Class UI_PrestigeNote extends UI_ResetWarning;

function SetupTo( Ext_PerkBase P )
{
	PerkToReset = P.Class;
	WindowTitle = "提示: 转生 "$P.PerkName;
	InfoLabel.SetText("提示: 如果你转生你的职业，你将不能撤消这个操作！|你的经验和等级将重置为 #{FF0000}0#{DEF}.|但这也会每次升级增加 #{F7FE2E}+"$P.PrestigeSPIncrease$"#{DEF} 点数。||你确定要这样做吗?");
}

defaultproperties
{
	bIsPrestige=true

	Begin Object Name=YesButten
		Tooltip="转生职业"
	End Object
}