function onCreate()
makeAnimatedLuaSprite('angel1', 'stages/god/ANGELFIELD', 750, 610)
addLuaSprite('angel1', true)
addAnimationByPrefix('angel1', 'right', 'ANGELFIELD RIGHT', 24, false)
addAnimationByPrefix('angel1', 'left', 'ANGELFIELD LEFT', 24, false)
addAnimationByPrefix('angel1', 'up', 'ANGELFIELD UP', 24, false)
addAnimationByPrefix('angel1', 'down', 'ANGELFIELD DOWN', 24, false)
addAnimationByPrefix('angel1', 'idle', 'ANGELFIELD IDLE', 24, true)
addAnimationByPrefix('angel1', 'hi', 'ANGELFIELD APARITION', 34, false)
scaleObject('angel1', 0.7, 0.7)

makeAnimatedLuaSprite('angel2', 'stages/god/ANGELFIELD', 700, 510)
addLuaSprite('angel2', true)
addAnimationByPrefix('angel2', 'right', 'ANGELFIELD RIGHT', 24, false)
addAnimationByPrefix('angel2', 'left', 'ANGELFIELD LEFT', 24, false)
addAnimationByPrefix('angel2', 'up', 'ANGELFIELD UP', 24, false)
addAnimationByPrefix('angel2', 'down', 'ANGELFIELD DOWN', 24, false)
addAnimationByPrefix('angel2', 'idle', 'ANGELFIELD IDLE', 24, true)
addAnimationByPrefix('angel2', 'hi', 'ANGELFIELD APARITION', 34, false)
scaleObject('angel2', 0.7, 0.7)

makeAnimatedLuaSprite('angel3', 'stages/god/ANGELFIELD', 450, 610)
addLuaSprite('angel3', true)
addAnimationByPrefix('angel3', 'right', 'ANGELFIELD RIGHT', 24, false)
addAnimationByPrefix('angel3', 'left', 'ANGELFIELD LEFT', 24, false)
addAnimationByPrefix('angel3', 'up', 'ANGELFIELD UP', 24, false)
addAnimationByPrefix('angel3', 'down', 'ANGELFIELD DOWN', 24, false)
addAnimationByPrefix('angel3', 'idle', 'ANGELFIELD IDLE', 24, true)
addAnimationByPrefix('angel3', 'hi', 'ANGELFIELD APARITION', 34, false)
scaleObject('angel3', 0.7, 0.7)
 setProperty('angel3.flipX', true)

makeAnimatedLuaSprite('angel4', 'stages/god/ANGELFIELD', 500, 510)
addLuaSprite('angel4', true)
addAnimationByPrefix('angel4', 'right', 'ANGELFIELD RIGHT', 24, false)
addAnimationByPrefix('angel4', 'left', 'ANGELFIELD LEFT', 24, false)
addAnimationByPrefix('angel4', 'up', 'ANGELFIELD UP', 24, false)
addAnimationByPrefix('angel4', 'down', 'ANGELFIELD DOWN', 24, false)
addAnimationByPrefix('angel4', 'idle', 'ANGELFIELD IDLE', 24, true)
addAnimationByPrefix('angel4', 'hi', 'ANGELFIELD APARITION', 34, false)
scaleObject('angel4', 0.7, 0.7)
 setProperty('angel4.flipX', true)

setProperty('angel1.visible', false);
setProperty('angel2.visible', false);
setProperty('angel3.visible', false);
setProperty('angel4.visible', false);

function onTimerCompleted(t,l,ll)
if t == 'angel1' then
setProperty('angel1.visible', true);
playAnim("angel1","hi",true);
runTimer('idle',1)
runTimer('angel2',0.1)
end
if t == 'angel2' then
setProperty('angel2.visible', true);
playAnim("angel2","hi",true);
runTimer('idle',1)
runTimer('angel3',0.1)
end
if t == 'angel3' then
setProperty('angel3.visible', true);
playAnim("angel3","hi",true);
runTimer('idle',1)
runTimer('angel4',0.1)
end
if t == 'angel4' then
setProperty('angel4.visible', true);
playAnim("angel4","hi",true);
runTimer('idle',1)
end
if t == 'idle' then
playAnim("angel4","idle",true);
playAnim("angel3","idle",true);
playAnim("angel2","idle",true);
playAnim("angel1","idle",true);
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'part5' then
local TAP4camera = true;
setProperty('marco.alpha', 0)
setProperty('bones.alpha', 0)

setProperty('rayo.alpha', 1)
setProperty('viento.alpha', 1)
doTweenZoom('zoom1', 'camGame', 0.95, 0.0001, 'sineInOut')
triggerEvent('Camera Follow Pos', 700, 300)
setProperty('cameraSpeed', '100')
setProperty('defaultCamZoom', 0.95)
setProperty('funnyBlack2.alpha', 0)
setProperty('funnyBlack.alpha', 0)
setProperty('Black.alpha',0)
end
if v1 == 'bye' then
doTweenZoom('zoom4', 'camGame', 2, 1, 'sineIn')
doTweenAlpha("shit33", "funnyBlack2", 1, 0.5, "quartIn")
end
if v1 == 'final' then
triggerEvent('Camera Follow Pos', 650, 450)
setProperty('cameraSpeed', '1000')
setProperty('rayo.alpha', 0)
setProperty('dad.alpha', 1)
doTweenZoom('zoom22', 'camGame', 1.25, 0.0001, 'sineInOut')
setProperty('defaultCamZoom', 1)
end
if v1 == 'crucifi' then
setProperty('cameraSpeed', '1')
triggerEvent('Camera Follow Pos', 730, 140)
doTweenAlpha('cat', 'dad', 0, 0.5, 'sineIn');
doTweenAlpha('rayo', 'rayo', 0, 0.5, 'sineIn');
doTweenAlpha('viento', 'viento', 0, 0.5, 'sineIn');
end
if v1 == 'end' then
doTweenAlpha("3", "funnyBlack", 1, 1, "quartIn")
end
if v1 == 'angeles' then
triggerEvent('Camera Follow Pos', 650, 600)
setProperty('defaultCamZoom', 1.95)
runTimer('angel1',0.1)
end
if v1 == 'byeangels' then
setProperty('defaultCamZoom', 1)
triggerEvent('Camera Follow Pos', 650, 450)
doTweenY('byeangelY', 'angel1', -1000, 2.5, 'sineInOut')
doTweenX('byeangelX', 'angel1', 800, 2.5, 'sineInOut')
doTweenY('byeangel2Y', 'angel2', -1000, 2.1, 'sineInOut')
doTweenX('byeangel2X', 'angel2', 800, 2.1, 'sineInOut')
doTweenY('byeangel3Y', 'angel3', -1000, 2.5, 'sineInOut')
doTweenX('byeangel3X', 'angel3', -100, 2.5, 'sineInOut')
doTweenY('byeangel4Y', 'angel4', -1000, 2.5, 'sineInOut')
doTweenX('byeangel4X', 'angel4', 300, 2.1, 'sineInOut')
end
if v1 == 'broken' then
triggerEvent('Change Character', 'bf', 'nermal-god-end')
triggerEvent('Play Animation','end', 'bf')
setProperty('dad.alpha', 0)
setProperty('camHUD.alpha', 0)
end
if v1 == 'theend' then
doTweenAlpha("ThanksForPlaying", "boyfriend", 0, 0.3, "quartIn")
end
end
end