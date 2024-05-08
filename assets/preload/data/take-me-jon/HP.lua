function onCreatePost()
makeLuaSprite('health', 'healthbar_orange', 218, 50)
addLuaSprite('health', false)
scaleObject('health', 1, 1)
setObjectCamera('health', 'hud')
setProperty('health.alpha', 1)

makeLuaSprite('health_filler', 'filler_left', 240, 80)
addLuaSprite('health_filler', true)
scaleObject('health_filler', 1, 1)
setObjectCamera('health_filler', 'hud')
setProperty('health_filler.alpha', 1)

doTweenX("healthBarX", "healthBar.scale", 1.34, 0.001, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 0.7, 0.001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.34, 0.001, "sineOut")
end

function onUpdatePost()
setHealthBarColors('000000', 'NONE')

setObjectOrder('health', getObjectOrder('health') + 1);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 2);
setObjectOrder('health_filler', getObjectOrder('health_filler') + 1);

setObjectOrder('iconP1', getObjectOrder('iconP1') + 3);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 4);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 5);
end

function onUpdate()
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)

setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)

setProperty('healthBar.bg.visible', false)

setProperty('healthBar.rightBar.scale.x', 0)
setProperty('healthBar.rightBar.scale.y', 0)

if not downscroll then
setProperty('health.y', 610)
setProperty('healthBar.y', 636)
setProperty('health_filler.y', 640)
end
if downscroll then
setProperty('scoreTxt.y', 10)
setProperty('healthBar.y', 76)
end
end

function onBeatHit()
    if curBeat % 1 == 0 then
        scaleObject('iconP2', 1, 1)
        doTweenX("Icon2X", "iconP2.scale", 1, 0.5, "sineout")
        doTweenY("Icon2Y", "iconP2.scale", 1, 0.5, "sineout")
        scaleObject('iconP1', 1, 1)
        doTweenX("IconX", "iconP1.scale", 1, 0.5, "sineout")
        doTweenY("IconY", "iconP1.scale", 1, 0.5, "sineout")
    end

end
