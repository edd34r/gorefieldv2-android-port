function onCreatePost()
makeLuaSprite('health', 'health_captive', 200, 65)
addLuaSprite('health', false)
scaleObject('health', 1, 1)
setObjectCamera('health', 'hud')
setProperty('health.alpha', 1)

doTweenX("healthBarX", "healthBar.scale", 1.4, 0.01, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 2.8, 0.01, "sineOut")

setProperty('healthBar.bg.visible', false)

setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end



function onUpdatePost()
setHealthBarColors('000000', 'FF0000')

setObjectOrder('health', getObjectOrder('health') + 2);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 1);

setObjectOrder('iconP1', getObjectOrder('iconP1') + 3);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 4);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 5);

end

function onUpdate()
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)

if not downscroll then
setProperty('health.y', 630)
end
if downscroll then
setProperty('scoreTxt.y', 10)
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

