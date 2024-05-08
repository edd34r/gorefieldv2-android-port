function onCreatePost()
makeLuaSprite('health', 'healthbar_gray', 218, 50)
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

setProperty('showRating', false)
setProperty('showComboNum', false)
end

function onUpdatePost()
setHealthBarColors('000000', 'NONE')

setObjectOrder('health', getObjectOrder('health') + 1);
setObjectOrder('health_filler', getObjectOrder('health_filler') + 2);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 3);

setObjectOrder('icons1', getObjectOrder('icons1') + 4);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 5);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 6);

if mustHitSection == true then
		doTweenAlpha('tweenHealth', 'healthBar', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP1', 'icons1', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP2', 'iconP2', 0.3, 0.3, linear)
		doTweenAlpha('tweenScore', 'scoreTxt', 0.3, 0.3, linear)
    doTweenAlpha('tweenHealthGray', 'health', 0.3, 0.3, linear)
    doTweenAlpha('tweenHealth_filler', 'health_filler', 0.3, 0.3, linear)
	else
		doTweenAlpha('tweenHealthS', 'healthBar', 1, 0.2, linear)
		doTweenAlpha('tweeniconP1S', 'icons1', 1, 0.2, linear)
		doTweenAlpha('tweeniconP2S', 'iconP2',1, 0.2, linear)
		doTweenAlpha('tweenScoreS', 'scoreTxt', 1, 0.2, linear)
    doTweenAlpha('tweenHealthGrayS', 'health', 1, 0.2, linear)
    doTweenAlpha('tweenHealth_filler2', 'health_filler', 1, 0.3, linear)
  end
end

function onUpdate()
setProperty('timeTxt.alpha', 0)
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)

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
