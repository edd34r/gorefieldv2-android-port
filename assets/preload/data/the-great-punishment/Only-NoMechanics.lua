function onCreate() 
makeLuaSprite('redr', 'stages/punishment/red_vignette', 0, 0)
addLuaSprite('redr', true)
scaleObject('redr', 1.2, 1.2)
setObjectCamera('redr', 'hud')
setProperty('redr.alpha', 0)
screenCenter('redr','xy')
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'red' then
setProperty('redr.alpha', 1)
triggerEvent("Add Camera Zoom",0.065,0.10)
triggerEvent('Play Animation','shoot', 'bf')
triggerEvent('Play Animation','damage', 'dad')
doTweenAlpha('byered', 'redr', 0, 0.5, 'sineIn');
end
end
end