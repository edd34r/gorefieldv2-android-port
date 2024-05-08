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

makeLuaSprite('health2', 'healthbar_gray', 218, 50)
addLuaSprite('health2', false)
scaleObject('health2', 1, 1)
setObjectCamera('health2', 'hud')
setProperty('health2.alpha', 0)

makeLuaSprite('health_filler2', 'filler_left_gray', 240, 80)
addLuaSprite('health_filler2', true)
scaleObject('health_filler2', 1, 1)
setObjectCamera('health_filler2', 'hud')
setProperty('health_filler2.visible', false)

doTweenX("healthBarX", "healthBar.scale", 1.34, 0.001, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 0.7, 0.001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.34, 0.001, "sineOut")
end

function onUpdatePost()
setHealthBarColors('000000', 'NONE')

setObjectOrder('health', getObjectOrder('health') + 1);
setObjectOrder('health2', getObjectOrder('health2') + 2);
setObjectOrder('health_filler', getObjectOrder('health_filler') + 2);
setObjectOrder('health_filler2', getObjectOrder('health_filler2') + 2);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 3);

setObjectOrder('icons1', getObjectOrder('icons1') + 5);
setObjectOrder('icons2', getObjectOrder('icons2') + 6);
setObjectOrder('iconP1', getObjectOrder('iconP1') + 5);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 6);
setObjectOrder('icons3', getObjectOrder('icons3') + 7);
setObjectOrder('icons4', getObjectOrder('icons4') + 8);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 9);
end

function onUpdate()
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)

setProperty('healthBar.bg.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

setProperty('healthBar.rightBar.scale.x', 0)
setProperty('healthBar.rightBar.scale.y', 0)

if not downscroll then
setProperty('health.y', 610)
setProperty('health2.y', 610)
setProperty('healthBar.y', 636)
setProperty('health_filler.y', 640)
setProperty('health_filler2.y', 640)
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
