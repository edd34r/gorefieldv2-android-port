function onStepHit()
if curStep == 751 then
setProperty('binkylaugh.alpha', 1)
playAnim("binkylaugh","laugh",true);
end
if curStep == 764 then
    setProperty('binkylaugh.alpha', 0)
end
if curStep == 36 then
    setProperty('inCutscene', false)
end
if curStep == 55 then
setProperty('funnyBlack.alpha', 0)
end
end

function onSongStart()
startVideo('inicio_payaso_god')
end


--Gracias JHAM25 ❤

--https://github.com/ShadowMario/FNF-PsychEngine/issues/14353