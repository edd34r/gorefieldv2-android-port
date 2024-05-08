function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'hea' then
setProperty('healthBar.visible', false);
setProperty('health_filler.visible',false);
setProperty('health.visible', false);
setProperty('icons1.visible', false);
setProperty('icons2.visible', false);
setProperty('scoreTxt.visible', false);
end
if v1 == 'z' then
doTweenZoom('zoom1', 'camGame', 1.55, 1, 'sineOut')
end
if v1 == 'z1' then
setProperty('healthBar.visible', true);
setProperty('health_filler.visible',true);
setProperty('health.visible', true);
setProperty('icons1.visible', true);
setProperty('icons2.visible', false);
setProperty('scoreTxt.visible', true);
    end
 end
end