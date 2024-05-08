function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'god1' then
doTweenAlpha("BlackBG2", "funnyBlackBG", 0, 0.3, "quartIn")
setProperty('icons2.visible', false)
setProperty('icons12.visible', true)
setProperty('health.visble', true)
setProperty('healthBar.visble', true)
setProperty('health_filler.visble', true)
setProperty('scoreTxt.visble', true)
setProperty('icons1.visible', true)
end
if v1 == 'god2' then
setProperty('icons1.visible', false)
setProperty('icons12.visible', false)
setProperty('icons3.visible', true)
setProperty('icons33.visible', true)
end
if v1 == 'god3' then
setProperty('icons3.visible', false)
setProperty('icons33.visible', false)
setProperty('icons5.visible', true)
setProperty('icons4.visible', true)
end
if v1 == 'god4' then
setProperty('icons5.visible', false)
setProperty('icons4.visible', false)
setProperty('iconP2.visible', true)
setProperty('icons7.visible', true)
end
if v1 == 'god5' then
setProperty('icons7.visible', false)
setProperty('iconP2.visible', false)
setProperty('icons1.visible', true)
setProperty('icons12.visible', true)
end
end
end