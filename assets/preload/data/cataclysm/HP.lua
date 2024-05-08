function onCreatePost()
makeLuaSprite('health', 'healthbar_gray', 218, 50)
addLuaSprite('health', false)
scaleObject('health', 1, 1)
setObjectCamera('health', 'hud')
setProperty('health.alpha', 1)

makeLuaSprite('health_filler', 'filler_left', 240, 80)
addLuaSprite('health_filler', false)
scaleObject('health_filler', 1, 1)
setObjectCamera('health_filler', 'hud')
setProperty('health_filler.alpha', 1)

doTweenX("healthBarX", "healthBar.scale", 1.34, 0.001, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 0.7, 0.001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.34, 0.001, "sineOut")

doTweenX("healthBarX", "healthBar.scale", 1.36, 0.2, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.36, 0.2, "sineOut")

setProperty('showRating', false)
setProperty('showComboNum', false)
end

function onUpdatePost()
setHealthBarColors('000000', 'AC424D')

setObjectOrder('health', getObjectOrder('health') + 1);
setObjectOrder('health_filler', getObjectOrder('health_filler') + 1);
setObjectOrder('healthBar', getObjectOrder('healthBar') + 2);

setObjectOrder('icons1', getObjectOrder('icons1') + 3);
setObjectOrder('icons2', getObjectOrder('icons2') + 4);
setObjectOrder('iconP2', getObjectOrder('iconP2') + 5);
setObjectOrder('icons3', getObjectOrder('icons3') + 6);
setObjectOrder('icons5', getObjectOrder('icons5') + 7);
setObjectOrder('icons7', getObjectOrder('icons7') + 8);
setObjectOrder('icons12', getObjectOrder('icons12') + 9);
setObjectOrder('icons33', getObjectOrder('icons33') + 10);
setObjectOrder('icons4', getObjectOrder('icons4') + 11);

setObjectOrder('scoreTxt', getObjectOrder('scoreTxt') + 12);

if mustHitSection == true then
		doTweenAlpha('tweenHealth', 'healthBar', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP1', 'icons1', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP2', 'icons2', 0.3, 0.3, linear)
    doTweenAlpha('tweeniconP22', 'iconP2', 0.3, 0.3, linear)
    doTweenAlpha('tweeniconP3', 'icons3', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP4', 'icons5', 0.3, 0.3, linear)
   doTweenAlpha('tweeniconP5', 'icons7', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP6', 'icons12', 0.3, 0.3, linear)
   doTweenAlpha('tweeniconP7', 'icons33', 0.3, 0.3, linear)
		doTweenAlpha('tweeniconP8', 'icons4', 0.3, 0.3, linear)
		doTweenAlpha('tweenScore', 'scoreTxt', 0.3, 0.3, linear)
    doTweenAlpha('tweenHealthGreem', 'health', 0.3, 0.3, linear)
    doTweenAlpha('tweenHealth_filler', 'health_filler', 0.3, 0.3, linear)
	else
		doTweenAlpha('tweenHealthS', 'healthBar', 1, 0.3, linear)
		doTweenAlpha('tweeniconP11', 'icons1', 1, 0.3, linear)
		doTweenAlpha('tweeniconP22', 'icons2', 1, 0.3, linear)
    doTweenAlpha('tweeniconP222', 'iconP2', 1, 0.3, linear)
    doTweenAlpha('tweeniconP33', 'icons3',1, 0.3, linear)
		doTweenAlpha('tweeniconP44', 'icons5', 1, 0.3, linear)
   doTweenAlpha('tweeniconP55', 'icons7', 1, 0.3, linear)
		doTweenAlpha('tweeniconP66', 'icons12', 1, 0.3, linear)
   doTweenAlpha('tweeniconP77', 'icons33', 1, 0.3, linear)
		doTweenAlpha('tweeniconP88', 'icons4', 1, 0.3, linear)
		doTweenAlpha('tweenScore1', 'scoreTxt', 1, 0.3, linear)
    doTweenAlpha('tweenHealthGreemS', 'health', 1, 0.3, linear)
    doTweenAlpha('tweenHealth_filler2', 'health_filler', 1, 0.3, linear)
	end
end

--notmrpolo credits ඩා

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