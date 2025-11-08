
local reflect = require "reflect"

local Capsule = reflect.MiniScript({
})

function Capsule:OnPointerClick(_)
    self.context.miniHelper:PlayEnding()
end

local MiniRoot = reflect.MiniScript({
    capsule={Capsule, "capsule"},
})

function MiniRoot:Awake()
end

function MiniRoot:Start()
end

return MiniRoot
