function onCreate()
makeLuaSprite('intro', 'logo/Hola_jonás', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite('red', 'stages/GoreStage/red_vignette', 0, 0)
addLuaSprite('red', false)
scaleObject('red', 1, 1)
setProperty('red.alpha', 0)
setObjectCamera('red', 'hud')
screenCenter('red','xy')

setObjectOrder('UpperBar', getObjectOrder('red') + 0);
setObjectOrder('LowerBar', getObjectOrder('red') - 1);

function onTimerCompleted(t,l,ll)
if t == 'red' then
doTweenAlpha('red', 'red', 1, 1.2, 'sineIn');
runTimer('nored',1.4)
end
if t == 'nored' then
doTweenAlpha('nored', 'red', 0, 1.2, 'sineIn');
end
end
end