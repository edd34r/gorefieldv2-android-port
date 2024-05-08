function onCreate()
makeLuaSprite("color", "", -500, -650)
makeGraphic("color", 1280, 720, "0x201035")
addLuaSprite("color", false)
scaleObject('color', 10, 10)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('nubes', 'stages/SkyFire/gorefield_clouds_2', -340, -940)
addLuaSprite('nubes', true)
scaleObject('nubes', 1, 1)

makeLuaSprite('nubes2', 'stages/SkyFire/gorefield_clouds_3', 340, -1090)
addLuaSprite('nubes2', false)
scaleObject('nubes2', 1, 1)

makeLuaSprite('nubes3', 'stages/SkyFire/gorefield_clouds', -200, -550)
addLuaSprite('nubes3', false)
scaleObject('nubes3', 1, 1)

makeAnimatedLuaSprite('fire', 'stages/SkyFire/fire_f4', -440, 350)
addLuaSprite('fire', false)
addAnimationByPrefix('fire', 'FIRE', 'FIRE', 24, true)
scaleObject('fire', 1.3, 1.3)
setScrollFactor('fire', 1, 1)

makeLuaSprite('intro', 'logo/TERROR_EN_LAS_ALTURAS', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')
end

function onUpdate(elapsed)
if curBeat >= 1 then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.15)
        else
            setProperty('defaultCamZoom', 1.05)
       end
    end
end

function onSongStart()
doTweenAlpha('black', 'funnyBlack', 0, 20, 'sineOut');

function onTimerCompleted(t,l,ll)
if t == 'nube1' then
doTweenY('nube11', 'nubes', 960, 2.5, 'sineIn');
setProperty('nubes.y', -940)
setProperty('nubes.x', -340)
setProperty('nubes2.x', 240)
runTimer('nube2',2.5)
end
if t == 'nube2' then
doTweenY('nube2', 'nubes2', 1090, 2.2, 'sineIn');
doTweenY('nube111', 'nubes', 960, 2.5, 'sineIn');
setProperty('nubes.y', -940)
setProperty('nubes2.y', -1090)
setProperty('nubes.x', -340)
setProperty('nubes2.x', 240)
runTimer('nube3',2.5)
end
if t == 'nube3' then
doTweenY('nube21', 'nubes', 960, 2.5, 'sineIn');
setProperty('nubes.y', -940)
setProperty('nubes.x', 850)
runTimer('nube1',2.5)
end
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2.2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
end
end
end


function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'firedown' then
doTweenY("fire", "fire", 1000, 35, "sineOut")
end
if v1 == 'intro' then
runTimer('intro',0.1)
end
if v1 == 'nubes' then
runTimer('nube1',0.1)
runTimer('nube2',0.1)
end
if v1 == 'nubesEnd' then
doTweenY('nubeend', 'nubes3', 0, 19, 'linear');
    end
  end
end

