function onCreate()
setProperty('camHUD.alpha', 0)

makeLuaSprite('BG', 'stages/punishment/BG_PHASE_0', -100, 40)
addLuaSprite('BG', false)
scaleObject('BG', 1, 1)

makeLuaSprite('BG1', 'stages/punishment/tv', 0, 360)
addLuaSprite('BG1', false)
scaleObject('BG1', 1, 1)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('black', 'stages/punishment/black_vignette', 0, 0)
addLuaSprite('black', true)
scaleObject('black', 1, 1)
setScrollFactor('black',0,0)
setProperty('black.alpha', 0.8)

makeLuaSprite('intro', 'logo/great_punishment', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

setObjectOrder('BG1', getObjectOrder('dadGroup') + 0);
setObjectOrder('gfGroup', getObjectOrder('BG1') + 1);
end

function onUpdate(elapsed)
        if mustHitSection then
            setProperty('defaultCamZoom', 1.25)
    triggerEvent('Camera Follow Pos', 550, 650)
        else
            setProperty('defaultCamZoom', 1.05)
            triggerEvent('Camera Follow Pos', 750, 550)
       end
if curBeat >= 128 then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.35)
            triggerEvent('Camera Follow Pos', 490, 700)
        else
            setProperty('defaultCamZoom', 1.05)
       end
    end
if curBeat > 144 then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.25)
    triggerEvent('Camera Follow Pos', 550, 650)
        else
            setProperty('defaultCamZoom', 1.05)
            triggerEvent('Camera Follow Pos', 750, 550)
          end
    end
end

function onCreatePost()
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end

function onSongStart()
runTimer('intro',0.1)

function onTimerCompleted(t,l,ll)
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
doTweenAlpha('black2', 'funnyBlack', 0, 7.5, 'sineIn');
runTimer('noIntro',2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
end
if t == 'left' then
doTweenX("gorefield", "dad", 80, 5, "sineInOut")
runTimer('right',5)
end
if t == 'right' then
doTweenX("gorefield", "dad", 170, 5, "sineInOut")
runTimer('left',5)
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'hi' then
doTweenX("gorefield", "dad", 150, 10, "sineOut")
setProperty('camZooming', true)
setProperty('cameraSpeed', '1')
runTimer('left',10)
   end
 end
end
