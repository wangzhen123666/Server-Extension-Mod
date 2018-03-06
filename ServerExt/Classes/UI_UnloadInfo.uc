Class UI_UnloadInfo extends KFGUI_FloatingWindow;

var class<Ext_PerkBase> PerkToReset;
var KFGUI_Button YesButten;
var KFGUI_TextField InfoLabel;
var byte CurCallCode;

function InitMenu()
{
	YesButten = KFGUI_Button(FindComponentID('Yes'));
	InfoLabel = KFGUI_TextField(FindComponentID('Info'));
	Super.InitMenu();
}
final function SetupTo( class<Ext_PerkBase> P )
{
	PerkToReset = P;
	WindowTitle = "ע��: ����ְҵ����"$P.Default.PerkName;
	YesButten.SetDisabled(true);
	InfoLabel.SetText("���Ե�...");
	++CurCallCode;
	ExtPlayerController(GetPlayer()).OnClientGetResponse = ReceivedInfo;
	ExtPlayerController(GetPlayer()).ServerGetUnloadInfo(CurCallCode,PerkToReset,false);
}
function ButtonClicked( KFGUI_Button Sender )
{
	switch( Sender.ID )
	{
	case 'Yes':
		ExtPlayerController(GetPlayer()).ServerGetUnloadInfo(0,PerkToReset,true);
		DoClose();
		break;
	case 'No':
		DoClose();
		break;
	}
}
function CloseMenu()
{
	Super.CloseMenu();
	PerkToReset = None;
	ExtPlayerController(GetPlayer()).OnClientGetResponse = ExtPlayerController(GetPlayer()).DefClientResponse;
}

function ReceivedInfo( byte CallID, byte Code, int DataA, int DataB )
{
	if( CurCallCode!=CallID )
		return;
	switch( Code )
	{
	case 0:
		InfoLabel.SetText("����: ��������ְֹҵϴ��!");
		break;
	case 1:
		InfoLabel.SetText("����: ����Ҫ�ȼ��ﵽ #{FFFF00}"$DataA$"#{DEF} �����ʹ�������!");
		break;
	case 2:
		InfoLabel.SetText("#{FF0000}����:#{DEF} ͨ��ʹ�ô˹��ܣ�������ʧ #{FFFF00}"$DataA$"#{DEF} ����ֵ, ��������� #{FF0000}"$DataB$"#{DEF} ���ȼ�!|���⣬�㽫������ɱ�������������ݡ�||���Ƿ�Ҫ����?");
		YesButten.SetDisabled(false);
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
	End Object
	Begin Object Class=KFGUI_Button Name=YesButten
		ID="Yes"
		ButtonText="��"
		Tooltip="����ְҵ(�����ܳ����˲���!)"
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
		ButtonText="��ֹ"
		Tooltip="��ֹ�����κθĶ�"
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