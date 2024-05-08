function onStepHit()
if curStep == 704 then
    setProperty('inCutscene', true)
    startVideo('CUTSCENE_1')
end
if curStep == 767 then
setProperty('inCutscene', false)
end
if curStep == 1168 then
    setProperty('inCutscene', true)
    startVideo('CAPTIVE_CINEMATIC_2')
end
if curStep == 1200 then
setProperty('inCutscene', false)
end
end


--Gracias JHAM25 ❤

--https://github.com/ShadowMario/FNF-PsychEngine/issues/14353