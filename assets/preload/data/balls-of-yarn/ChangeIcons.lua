function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'jon' then
setProperty('icons1.visible', true)
setProperty('icons4.visible', false)
end
if v1 == 'luna' then
setProperty('icons1.visible', false)
setProperty('icons4.visible', true)
end
if v1 == 'cartoonfield' then
setProperty('icons2.visible', true)
setProperty('icons3.visible', false)
end
if v1 == 'cc' then
setProperty('icons2.visible', false)
setProperty('icons3.visible', true)
end
end
end