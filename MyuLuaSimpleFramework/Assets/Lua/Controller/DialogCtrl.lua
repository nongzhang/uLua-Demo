require "Common/define"

DialogCtrl = {}
local this = DialogCtrl
local transform
local gameObject
local lua 



function DialogCtrl.New()
	return this
end

function DialogCtrl.Awake()
	PanelManager:CreatePanel("Dialog",this.OnCreate)
end

function DialogCtrl.OnCreate(obj)
	gameObject = obj
	transform = gameObject.transform
	
	lua = gameObject:GetComponent("LuaBehaviour")
	lua:AddClick(DialogPanel.buttonClose, this.OnButtonClose);
end

function DialogCtrl.OnButtonClose()
	this.Hide()
end

function DialogCtrl.Show()
	DialogPanel.anim:SetBool("IsShow",true)
end


function DialogCtrl.Hide()
	DialogPanel.anim:SetBool("IsShow",false)
end