function onStepHit()
if curStep == 32 then
    setProperty('inCutscene', false)
end
if curStep == 1589 then
setProperty('inCutscene', true)
startVideo('CINEMATIC_LAYER')
end
if curStep == 1641 then
    setProperty('inCutscene', false)
end
if curStep == 3558 then
setProperty('inCutscene', true)
startVideo('GODFIELD_CINEMATIC_2')
end
if curStep == 3805 then
    setProperty('inCutscene', false)
end
end

function onSongStart()
setProperty('inCutscene', true)
startVideo('GODFIELD_INTRO')
end


--Gracias JHAM25 ❤

--https://github.com/ShadowMario/FNF-PsychEngine/issues/14353