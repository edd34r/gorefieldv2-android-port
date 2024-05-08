function onCreate()
setProperty('camHUD.alpha', 0)
end

function onStepHit()
if curStep == 1 then
setProperty('camHUD.alpha', 1)
setObjectCamera('black', 'hud')
setProperty('healthBar.alpha', tonumber(0))
setProperty('scoreTxt.alpha', tonumber(0))

setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)

setPropertyFromGroup('playerStrums',0,'alpha',0)
setPropertyFromGroup('playerStrums',1,'alpha',0)
setPropertyFromGroup('playerStrums',2,'alpha',0)
setPropertyFromGroup('playerStrums',3,'alpha',0)
end
end