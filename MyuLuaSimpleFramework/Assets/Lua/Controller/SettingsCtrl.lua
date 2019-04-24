require "Common/define"
--require "View/SettingsPanel"

SettingsCtrl = {}
local this = SettingsCtrl;

local transform
local gameObject
local lua

function SettingsCtrl.New()
	return this
end

function SettingsCtrl.Awake()
	PanelManager:CreatePanel("Settings",this.OnCreate);
end


function SettingsCtrl.OnCreate(obj)
	gameObject = obj;
	transform = gameObject.transform;
	
	lua = gameObject:GetComponent('LuaBehaviour');
	lua:AddClick( SettingsPanel.buttonClose,this.OnButtonClose )
end

function SettingsCtrl.OnButtonClose()
	this.Hide()
end

function SettingsCtrl.Show()
	SettingsPanel.anim:SetBool("IsShow",true)
end


function SettingsCtrl.Hide()
	SettingsPanel.anim:SetBool("IsShow",false)
end