function onUpdate()
 if curStep == 1583 and not downscroll then
doTweenY("healthBarY", "healthBar.scale", 0.85, 0.001, "sineOut")
doTweenY("healthBarBGY", "healthBarBG.scale", 0.65, 0.0001, "sineOut")
doTweenX("healthBarX", "healthBar.scale", 1.32, 0.0001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.32, 0.001, "sineOut")

setProperty('health_pixel.y', 577)
setProperty('health_filler.y', 643)
setProperty('healthBar.x', 332)
setProperty('health_pixel.alpha', 1)
setProperty('health.visible', false);
end
if curStep == 1583 and downscroll then
setProperty('health_pixel.alpha', 1)

doTweenY("healthBarY", "healthBar.scale", 0.85, 0.0001, "sineOut")
doTweenY("healthBarBGY", "healthBarBG.scale", 0.85, 0.0001, "sineOut")
doTweenX("healthBarX", "healthBar.scale", 1.32, 0.2, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.32, 0.001, "sineOut")

setProperty('healthBar.y', 76)
setProperty('health.visible', false);
end
if curStep == 1712 and not downscroll then
doTweenX("healthBarX", "healthBar.scale", 1.34, 0.001, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 0.7, 0.001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.34, 0.001, "sineOut")

setProperty('health.y', 610)
setProperty('healthBar.y', 636)
setProperty('health_filler.y', 640)
setProperty('health_pixel.alpha', 0)
setProperty('health.visible', true);
end
if curStep == 1712 and downscroll then
setProperty('health_pixel.alpha', 0)

doTweenX("healthBarX", "healthBar.scale", 1.34, 0.001, "sineOut")
doTweenY("healthBarY", "healthBar.scale", 0.7, 0.001, "sineOut")
doTweenX("healthBarBGX", "healthBarBG.scale", 1.34, 0.001, "sineOut")

setProperty('healthBar.y', 76)
setProperty('health.visible', true);
end
end
