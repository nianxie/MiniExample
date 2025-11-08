
do
	_G.UnityEngine = CS.UnityEngine
end

local MiniContext = {}
MiniContext.__index=MiniContext

function MiniContext.new(miniHelper)
	return setmetatable({
		miniHelper=miniHelper,
	}, MiniContext)
end

return function(miniHelper)
	return MiniContext.new(miniHelper)
end
