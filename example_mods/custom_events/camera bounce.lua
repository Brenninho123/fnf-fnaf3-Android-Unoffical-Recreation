-- Refactored/Optimized by AutisticLulu

local angleshit = 1
local anglevar = 1

function onCreate()
	makeLuaSprite('bg', 'dmbg', -343.15, -295.45)
	addLuaSprite('bg', false)
end

function onBeatHit()
	if curBeat < 388 then
		triggerEvent('Add Camera Zoom', 0.04, 0.05)

		if curBeat % 2 == 0 then
			angleshit = anglevar
		else
			angleshit = -anglevar
		end

		setProperties(angleshit * 3)
		doTweenAngle('turn', 'camHUD', angleshit, stepCrochet * 0.002, 'circOut')
		doTweenX('tuin', 'camHUD', -angleshit * 8, crochet * 0.001, 'linear')
		doTweenAngle('tt', 'camGame', angleshit, stepCrochet * 0.002, 'circOut')
		doTweenX('ttrn', 'camGame', -angleshit * 8, crochet * 0.001, 'linear')
	else
		resetProperties()
	end
end

function onStepHit()
	if curBeat < 388 then
		if curStep % 4 == 0 then
			doTweenY('rrr', 'camHUD', -12, stepCrochet * 0.002, 'circOut')
			doTweenY('rtr', 'camGame.scroll', 12, stepCrochet * 0.002, 'sineIn')
		end
		if curStep % 4 == 2 then
			doTweenY('rir', 'camHUD', 0, stepCrochet * 0.002, 'sineIn')
			doTweenY('ryr', 'camGame.scroll', 0, stepCrochet * 0.002, 'sineIn')
		end
	end
end

-- Helper functions
function setProperties(angle)
	setProperty('camHUD.angle', angle * 3)
	setProperty('camGame.angle', angle * 3)
end

function resetProperties()
	setProperty('camHUD.angle', 0)
	setProperty('camHUD.x', 0)
	setProperty('camHUD.x', 0)
end
