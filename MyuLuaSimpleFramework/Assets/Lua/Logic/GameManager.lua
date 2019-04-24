require "Common/define"
require "Controller/BottomCtrl"
require "Controller/SettingsCtrl"
require "Controller/DialogCtrl"


GameManager = {};
local this = GameManager;

function GameManager.LuaScriptPanel()
	return 'Bottom','Settings','Dialog';
end

function GameManager.OnInitOK()
	AppConst.SocketPort = 6688;
    AppConst.SocketAddress = "192.168.137.1";
    NetManager:SendConnect();
	
	
	BottomCtrl.Awake()
	SettingsCtrl.Awake()
	DialogCtrl.Awake()
end