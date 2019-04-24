

SettingsPanel = {}

local this = SettingsPanel

local transform;
local gameObject

function SettingsPanel.Awake(obj)
	gameObject = obj
	transform = gameObject.transform
	
	this.InitPanel()
end


function SettingsPanel.InitPanel()
	this.anim = transform:FindChild("BG"):GetComponent("Animator")
	this.buttonClose = transform:FindChild("BG/ButtonClose").gameObject
end