local up = false
local rotate = false

function onUpdate(elapsed)
    local currentBeat = (getSongPosition()/1000)*(curBpm/80)
    
    if up then

        for i=0,3 do

            setPropertyFromGroup('opponentStrums', i, 'y', _G['defaultOpponentStrumY'..i] + 20 * math.sin((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('playerStrums', i, 'y', _G['defaultPlayerStrumY'..i] + 20 * math.sin((currentBeat + (i+4)*0.25) * math.pi))

  end
    doTweenX('LEEFT', 'camHUD', 45 * math.sin(currentBeat * 1), 0.8)

end
 if rotate then
 doTweenAngle('hudwweeeeww', 'camHUD', 3 * math.sin(currentBeat * 1), 0.4)
  end
end

function onBeatHit()

if curBeat == 232 then

up = true
end
if curBeat == 264 then
rotate = true
end
end
