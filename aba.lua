repeat wait() until game.Loaded
game:GetService("RunService"):Set3dRenderingEnabled(false)
setfpscap(30)
task.wait(5)

_G.MinTimer = 60


local function serverHop()
	if syn then
		syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/fire1774/abafarm/main/aba.lua", true))()')
		game:HttpGet("https://raw.githubusercontent.com/fire1774/serverhop/main/serverhop.lua", true)()
	end
end


local function timerCheck()
	local timer = game.Workspace.Message.Text:split(" ")
	local time = tonumber(timer[1])
	return time
end

if timerCheck() <= _G.MinTimer then
    repeat task.wait() until timerCheck() > _G.MinTimer
    task.wait(1)
    serverHop()
else
    serverHop()
end
