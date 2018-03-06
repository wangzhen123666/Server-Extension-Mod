Class UI_ResetWarning extends KFGUI_FloatingWindow;

var KFGUI_TextField InfoLabel;
var class<Ext_PerkBase> PerkToReset;
var bool bIsPrestige;

function InitMenu()
{
	InfoLabel = KFGUI_TextField(FindComponentID('Info'));
	Super.InitMenu();
}
function SetupTo( Ext_PerkBase P )
{
	PerkToReset = P.Class;
	WindowTitle = "警告: 重置 "$P.PerkName;
}
function ButtonClicked( KFGUI_Button Sender )
{
	switch( Sender.ID )
	{
	case 'Yes':
		ExtPlayerController(GetPlayer()).ServerResetPerk(PerkToReset,bIsPrestige);
		PerkToReset = None;
		DoClose();
		break;
	case 'No':
		DoClose();
		break;
	}
}

defaultproperties
{
	XPosition=0.35
	YPosition=0.2
	XSize=0.3
	YSize=0.45
	bAlwaysTop=true
	bOnlyThisFocus=true
	
	Begin Object Class=KFGUI_TextField Name=WarningLabel
		ID="Info"
		XPosition=0.01
		YPosition=0.12
		XSize=0.98
		YSize=0.775
		Text="#{FF0000}警告:#{DEF} 如果你把职业重置到初始状态, 你将不能撤消此操作。!|#{FF0000}你的所有经验和等级（包括转生等级）都将归零.#{DEF}|如果这是一个失误操作，请不要向管理员抱怨!||你确定要这样做吗?"
	End Object
	Begin Object Class=KFGUI_Button Name=YesButten
		ID="Yes"
		ButtonText="是"
		Tooltip="重置职业"
		XPosition=0.2
		YPosition=0.9
		XSize=0.29
		YSize=0.07
		ExtravDir=1
		OnClickLeft=ButtonClicked
		OnClickRight=ButtonClicked
	End Object
	Begin Object Class=KFGUI_Button Name=NoButten
		ID="No"
		ButtonText="中止"
		Tooltip="终止不做任何改动"
		XPosition=0.5
		YPosition=0.9
		XSize=0.29
		YSize=0.07
		OnClickLeft=ButtonClicked
		OnClickRight=ButtonClicked
	End Object
	
	Components.Add(WarningLabel)
	Components.Add(YesButten)
	Components.Add(NoButten)
}