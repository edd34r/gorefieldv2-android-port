function onCreate()
makeLuaSprite('intro', 'logo/Captive', 0, -600)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setObjectCamera("intro", 'other')
end

function onSongStart()
doTweenY("intro", "intro", 0, 1, "quartInOut")
doTweenAlpha("shiiii", "funnyBlack", 0, 1.5, "quartIn")
runTimer('noIntro',2.3)
setProperty('camZooming', true)

function onTimerCompleted(t,l,ll)
if t == 'noIntro' then
doTweenY("introX", "intro", -660, 1, "quartIn")
end
if t == 'text' then
doTweenAlpha('text1', 'dont', 1, 0.5, 'sineIn');
doTweenAlpha('text2', 'you', 1, 0.5, 'sineIn');
runTimer('notext',1.5)
end
if t == 'notext' then
doTweenAlpha('notext1', 'dont', 0, 0.5, 'sineIn');
doTweenAlpha('notext2', 'you', 0, 0.5, 'sineIn');
end
end
end