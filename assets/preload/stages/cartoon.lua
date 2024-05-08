function onCreate()
setProperty('cameraSpeed', '10000')
setProperty('camZooming', true)

makeLuaSprite('BG', 'stages/cartoon/gbStage_Sky', -560, -250)
addLuaSprite('BG', false)
scaleObject('BG', 1, 1)
setScrollFactor('BG', 1, 1)

makeLuaSprite('BG2', 'stages/cartoon/gbStage_buildings', -690, -190)
addLuaSprite('BG2', false)
scaleObject('BG2', 1, 1)
setScrollFactor('BG2', 1, 1)

makeLuaSprite('BG3', 'stages/cartoon/gbStage_base', -1150, -730)
addLuaSprite('BG3', false)
scaleObject('BG3', 1.3, 1.3)
setScrollFactor('BG3', 1, 1)

makeLuaSprite('intro', 'logo/Balls_of_Yarn', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('black', 'stages/cartoon/black_vignette', 0, 0)
addLuaSprite('black', false)
scaleObject('black', 1, 1)
setObjectCamera('black', 'other')
setProperty('black.alpha', 1)

end

function onSongStart()
doTweenZoom('zoom1', 'camGame', 0.9, 9, 'sineInOut')
setProperty('defaultCamZoom',0.9)
doTweenAlpha("shiiii", "funnyBlack", 0, 9, "quartIn")

function onTimerCompleted(t,l,ll)
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'intro' then
runTimer('intro',0.1)
end
if v1 == 'hi' then
setProperty('defaultCamZoom',0.5)
setProperty('cameraSpeed', '1')
doTweenAlpha("shiiiii", "black", 0, 0.5, "quartIn")
doTweenAlpha("iconFade", "icons2", 1, 0.5, "quartIn")
end
if v1 == 'black' then
doTweenAlpha("shiiii2", "black", 1, 1, "linear")
end
if v1 == 'noblack' then
doTweenAlpha("shiiii3", "black", 0, 1, "linear")
end
if v1 == 'end' then
doTweenAlpha("shiiii4", "funnyBlack", 1, 0.5, "quartIn")
end
end
end
