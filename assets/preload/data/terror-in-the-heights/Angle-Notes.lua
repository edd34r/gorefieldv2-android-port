local up = false
local normal = false
Rotate = false

function onUpdate(elapsed)
    local currentBeat = (getSongPosition()/1000)*(curBpm/80)
    
    if up then

        for i=0,3 do

            setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i] + 20 * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i] + 20 * math.sin((currentBeat + (i+4)*0.25) * math.pi))
doTweenAngle('hudwweeeeww', 'camHUD', 3 * math.sin(currentBeat * 1), 0.4)
  end
    doTweenX('LEEFT', 'camHUD', 45 * math.sin(currentBeat * 1), 0.8)
   end

if Rotate then
     doTweenAngle('hudwweeeeww', 'camHUD', 3 * math.sin(currentBeat * 1), 0.4)
    doTweenX('LEEFT', 'camHUD', 45 * math.sin(currentBeat * 1), 0.8)

        end
    end
    if normal then

		for i=0,7 do

            setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i])
            setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i])
doTweenAngle('hudReturn2', 'camHUD', 0, 1)
doTweenX('LLLEEELLL', 'camHUD', 0, 1)
   end
end

function onBeatHit()
if curBeat == 128 then
Rotate = true
end
if curBeat == 192 then
doTweenX('LLLEEELLL', 'camHUD', 0, 1)
doTweenAngle('hudReturn', 'camHUD', 0, 1)
Rotate = false
normal = true
end
if curBeat == 256 then
up = true
on2 = true
end
end
