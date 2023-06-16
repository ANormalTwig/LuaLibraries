local timer = require("core.timer")

local server = require("core.http"):new(function(req, res)
	timer:new(5):once("timeout", function()
		res:finish(string.format("Hello, World! %s", req.rawpath))
	end)
end)
server:listen(8080)

require("core.loop").run()

