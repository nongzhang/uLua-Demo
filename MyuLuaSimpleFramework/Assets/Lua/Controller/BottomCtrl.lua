require "Common/define"
require "View/BottomPanel"

BottomCtrl = {}

local this = BottomCtrl;
local transform
local gameObject
local lua

function BottomCtrl.New()
	return this
end

function BottomCtrl.Awake()
	PanelManager:CreatePanel("Bottom",this.Oncreats);
end

function BottomCtrl.Oncreats(obj)
	gameObject = obj
	transform = gameObject.transform;
	
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick(BottomPanel.ButtonSetting, this.OnButtonSettingClick);
	lua:AddClick(BottomPanel.ButtonPlayer, this.OnButtonPlayerClick);
	lua:AddClick(BottomPanel.ButtonDialog, this.OnButtonDialogClick);
	
end


function BottomCtrl.OnButtonSettingClick()
	SettingsCtrl.Show()
end


function BottomCtrl.OnButtonPlayerClick()
	
end

function BottomCtrl.OnButtonDialogClick()
	DialogCtrl.Show()
end
