function onCreate()
setProperty('camHUD.alpha', 0)

makeLuaSprite('BG', 'stages/bigotes/BG_0', -650, -290)
addLuaSprite('BG', false)
scaleObject('BG', 1, 1)
setProperty('BG.alpha', 0.4)

makeAnimatedLuaSprite('BG3', 'stages/bigotes/BG_TORNADO', 410, -150)
addLuaSprite('BG3', false)
addAnimationByPrefix('BG3', 'BG TORNADO', 'BG TORNADO', 24, true)
scaleObject('BG3', 1, 1)
setProperty('BG3.alpha', 1)

makeLuaSprite('BG1', 'stages/bigotes/BG_01', -680, -130)
addLuaSprite('BG1', false)
scaleObject('BG1', 1, 1)
setProperty('BG1.alpha', 1)

makeLuaSprite('BG2', 'stages/bigotes/BG_AGUA', -620, 980)
addLuaSprite('BG2', false)
scaleObject('BG2', 1, 1)
setProperty('BG2.alpha', 1)

makeLuaSprite("funnyBlackBG", "", -550, -250)
addLuaSprite('funnyBlackBG', false)
makeGraphic("funnyBlackBG", 1280, 720, "0xFF000000")
scaleObject('funnyBlackBG', 100, 100)
setProperty('funnyBlackBG.alpha', 0)
setScrollFactor('funnyBlackBG',0,0)

makeLuaSprite('intro', 'logo/Bigotes_logo', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite("BGPixel", "", 450, 0)
makeGraphic("BGPixel", 1280, 720, "0x362253")
addLuaSprite("BGPixel", false)
setProperty('BGPixel.alpha', 0)

makeAnimatedLuaSprite('BG-Pixel', 'stages/bigotes/BiGote', 810, 430)
addLuaSprite('BG-Pixel', false)
addAnimationByPrefix('BG-Pixel', 'BiGote', 'BiGote', 8, true)
scaleObject('BG-Pixel', 0.5, 0.15)
setProperty('BG-Pixel.alpha', 0)

runTimer('BG',1.2)
end

function onUpdate(elapsed)
        if mustHitSection then
            setProperty('defaultCamZoom', 0.75)
        else
            setProperty('defaultCamZoom', 0.65)
        end
        if curBeat > 396 then
        if mustHitSection then
            setProperty('defaultCamZoom', 2)
        else
            setProperty('defaultCamZoom', 2)
          end
         end
          if curBeat > 428 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.75)
        else
            setProperty('defaultCamZoom', 0.65)
        end
    end
end

function onSongStart()
doTweenZoom('zoom1', 'camGame', 0.65, 3.5, 'sineInOut')
setProperty('defaultCamZoom',0.65)
doTweenAlpha("shiiii", "funnyBlack", 0, 2, "quartIn")
end

function onTimerCompleted(t,l,ll)
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'intro' then
doTweenAlpha('hud', 'camHUD', 1, 0.5, 'sineIn');
runTimer('intro',0.1)
end
if v1 == 'zoom' then
doTweenZoom('zoom1', 'camGame', 0.95, 0.3, 'sineInOut')
doTweenAlpha("shit1", "funnyBlack", 1, 0.3, "quartIn")
end
if v1 == 'flash' then
cameraFlash('game', '4B0082', '1')
setProperty('BGPixel.alpha', 0)
setProperty('BG-Pixel.alpha', 0)
setProperty('funnyBlack.alpha', 0)
setProperty('icons1.visible', true);
setProperty('icons2.visible', true);
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end
if v1 == 'zoom2' then
doTweenZoom('zoom2', 'camGame', 2.5, 0.3, 'sineInOut')
doTweenAlpha("shit33", "funnyBlack", 1, 0.3, "sineOut")
setProperty('defaultCamZoom', 5)
end
if v1 == 'part2' then
doTweenAlpha("shit4", "funnyBlack", 0, 0.5, "quartIn")
doTweenZoom('zoompart2', 'camGame', 2.9, 0.001, 'sineInOut')
setProperty('cameraSpeed',1000)
setProperty('BGPixel.alpha', 1)
setProperty('BG-Pixel.alpha', 1)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)
setProperty('icons1.visible', false);
setProperty('icons2.visible', false);
end
if v1 == 'end' then
cancelTween(zoom3)
doTweenZoom('zoom5', 'camGame', 2.5, 0.3, 'sineInOut')
doTweenAlpha("shit5", "funnyBlack", 1, 0.3, "quartIn")
end
if v1 == 'black' then
doTweenAlpha("Bgs", "funnyBlackBG", 0.7, 1, "sineOut")
end
if v1 == 'noblack' then
doTweenAlpha("Bgs2", "funnyBlackBG", 0, 1, "sineOut")
end
end
end

function onBeatHit() 
	   if (curBeat % 4 == 0) then
setProperty('BG.alpha', 1)
doTweenAlpha('SHIT', 'BG', 0.7, 0.5, 'sineIn');
end
end