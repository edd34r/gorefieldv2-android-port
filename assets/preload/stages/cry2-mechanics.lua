function onCreate()
setProperty('camZooming', true)
makeLuaSprite('BG', 'stages/cry/BG_C', -2500, -1610)
addLuaSprite('BG', false)
scaleObject('BG', 2.5, 2.5)
setScrollFactor('BG', 1, 1)

makeLuaSprite('intro', 'logo/Nocturnal_Meow_Logo', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite('black', 'stages/cry/black_vignette', 0, 0)
addLuaSprite('black', false)
scaleObject('black', 1, 1)
setObjectCamera('black', 'hud')
setProperty('black.alpha', 1)

makeAnimatedLuaSprite('rayos-y-centellas', 'stages/cry/RAYOS', 0, 0)
addLuaSprite('rayos-y-centellas', true)
addAnimationByPrefix('rayos-y-centellas', 'rayo', 'RAYO 1', 24, false)
scaleObject('rayos-y-centellas', 1.5, 1.5)
setObjectCamera('rayos-y-centellas', 'hud')
screenCenter('rayos-y-centellas','xy')
setProperty('rayos-y-centellas.alpha', 0)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

setProperty('iconP1.visible', false);
setProperty('iconP2.visible', false);
end

function onSongStart()
runTimer('intro',0.1)

function onTimerCompleted(t,l,ll)
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2.3)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
doTweenAlpha("shit335", "funnyBlack", 0, 3.5, "quartIn")
end
end
end

function onUpdate(elapsed)
if curBeat >= 64 then
        if mustHitSection then
            setProperty('defaultCamZoom', 1)
        else
            setProperty('defaultCamZoom', 0.4)
       end
    end
 end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'rayo' then
cameraShake('hud', '0.01', '0.2')
setProperty('rayos-y-centellas.alpha', 1)
setProperty('camGame.alpha', 0.3)
playAnim("rayos-y-centellas","rayo",true);
doTweenAlpha('t2', 'camGame', 1, 1, 'sineIn');
end
 end
end