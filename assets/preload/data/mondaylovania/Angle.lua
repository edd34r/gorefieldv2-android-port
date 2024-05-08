local Rotate = false
local normal = false

function onUpdate(elapsed)
    local currentBeat = (getSongPosition()/1000)*(curBpm/80)

if Rotate then
     doTweenAngle('hudwweeeeww', 'camHUD', 3 * math.sin(currentBeat * 1), 0.5)
    doTweenX('LEEFT', 'camHUD', 45 * math.sin(currentBeat * 1), 0.8)

        end

 if normal then

doTweenAngle('hudReturn2', 'camHUD', 0, 1)
doTweenX('LLLEEELLL', 'camHUD', 0, 1)
   end
end

function onBeatHit()
if curBeat == 167 then
Rotate = true
end
if curBeat == 223 then
doTweenX('LLLEEELLL', 'camHUD', 0, 1)
doTweenAngle('hudReturn', 'camHUD', 0, 1)
Rotate = false
normal = true
end
if curBeat == 296 then
Rotate = true
end
end
