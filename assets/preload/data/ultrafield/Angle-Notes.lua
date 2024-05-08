local up = false
local normal = false
local Rotate = false

function onUpdate(elapsed)
    local currentBeat = (getSongPosition()/1000)*(curBpm/80)
    

if Rotate then
     doTweenAngle('hudwweeeeww', 'camHUD', 2 * math.sin(currentBeat * 1), 0.1)
    doTweenX('LEEFT', 'camHUD', 50 * math.sin(currentBeat * 1), 0.6)

        end
    end


function onBeatHit()
if curBeat == 255 then
Rotate = true
end

end
