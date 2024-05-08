function onCreatePost()
makeLuaSprite('health', 'healthbar_pixel', 214, 15)
addLuaSprite('health', false)
scaleObject('health', 3.13, 3.13)
setObjectCamera('health', 'hud')
setProperty('health.alpha', 1)

makeLuaSprite('health_filler', 'filler_left', 240, 80)
addLuaSprite('health_filler', true)
scaleObject('health_filler', 1, 1)
setObjectCamera('health_filler', 'hud')
setProperty('health_filler.alpha', 1)

doTweenY("healthBarY", "healthBar.scale", 0.85, 0.2, "sineOut")
doTweenY("healthBarBGY", "healthBarBG.scale", 0.65, 0.2, "sineOut")
doTweenX("healthBarX", "healthBar.scale", 1.32, 0.2, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.32, 0.2, "sineOut")

end

function onUpdate()
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)
end

function onUpdatePost()
setHealthBarColors('000000', 'AC424D')

setObjectOrder('health', getObjectOrder('health') + 1);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 2);
setObjectOrder('health_filler', getObjectOrder('health_filler') + 1);

setObjectOrder('iconP1', getObjectOrder('iconP1') + 3);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 4);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 5);

setProperty('healthBar.bg.visible', false)

setProperty('healthBar.rightBar.scale.x', 0)
setProperty('healthBar.rightBar.scale.y', 0)

if not downscroll then
setProperty('health.y', 577)
setProperty('health_filler.y', 643)
setProperty('healthBar.x', 332)
end
if downscroll then
setProperty('scoreTxt.y', 10)
setProperty('healthBar.x', 332)
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
