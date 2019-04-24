


DialogPanel = {}

local this = DialogPanel
local transform
local gameObject

function DialogPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform
	this.InitPanel()
end

function DialogPanel.InitPanel()
	this.anim = transform:FindChild("BG"):GetComponent("Animator")
	this.buttonClose = transform:FindChild("BG/ButtonClose").gameObject
	
end