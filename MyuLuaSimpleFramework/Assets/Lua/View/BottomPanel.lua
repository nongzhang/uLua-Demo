

BottomPanel = {}

local this = BottomPanel
local transform
local gameObject


function BottomPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform
	
	this.InitPanel()
end


function BottomPanel.InitPanel()
	this.ButtonSetting = transform:FindChild("ButtonSetting").gameObject
	this.ButtonPlayer = transform:FindChild("ButtonPlayer").gameObject
	this.ButtonDialog = transform:FindChild("ButtonDialog").gameObject
end