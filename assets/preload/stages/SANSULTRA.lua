function onCreatePost()
setProperty('camHUD.alpha', 0)
end

function onCreate()
makeLuaSprite('BG', 'stages/sans/cuadro_ULTRA', 313, 500)
addLuaSprite('BG', true)
scaleObject('BG', 1.1, 1.1)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('intro', 'logo/Ultra-Field', 0, 300)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera("intro", 'other')
end

function onSongStart()
doTweenAlpha('black', 'funnyBlack', 0, 28, 'sineIn');
doTweenZoom('zoom', 'camGame', 0.75, 28, 'sineInOut')
setProperty('defaultCamZoom', 0.75)

function onTimerCompleted(t)
if t == 'noIntro' then
doTweenY("introX", "intro", 760, 1, "sineOut")
doTweenAlpha('nointro', 'intro', 0, 0.3, 'sineIn');
end
end
end


function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'intro' then
doTweenY("intro", "intro", 0, 1, "sineOut")
doTweenAlpha('1intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2.3)
end
if v1 == 'BFzoom' then
triggerEvent('Camera Follow Pos', 800, 750)
setProperty('defaultCamZoom', 1.35)
end
if v1 == 'noBFzoom' then
triggerEvent('Camera Follow Pos')
setProperty('defaultCamZoom', 0.75)
end
if v1 == 'end' then
setProperty('camZooming', false)
doTweenZoom('zoom', 'camGame', 0.45, 15, 'sineInOut')
setProperty('defaultCamZoom', 0.45)
   end
 end
end