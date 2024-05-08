function onCreate()
setProperty('camHUD.alpha', 0)
setProperty('gfSpeed', 1000)

makeLuaSprite('bg', 'stages/GoreStage/bg_gorefield_1', -140, -240)
addLuaSprite('bg', false)
scaleObject('bg', 1, 1)
setProperty('bg.alpha', 0)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('intro', 'logo/curius_cat', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite('black', 'stages/GoreStage/black_vignette', -140, -240)
addLuaSprite('black', false)
scaleObject('black', 1, 1)
setProperty('black.alpha', 0)
setObjectCamera('black', 'hud')
screenCenter('black','xy')
end

function onCreatePost()
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end

function onUpdatePost()
setProperty('camHUD.zoom', 1)
end

function onSongStart()
runTimer('intro',0.1)

function onTimerCompleted(t,l,ll)
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
   if v1 == 'off' then
doTweenAlpha('off', 'funnyBlack', 0.95, 0.5, 'sineIn');
doTweenAlpha('off2', 'bg', 0, 0.5, 'sineIn');
end
if v1 == 'on' then
setProperty('camHUD.alpha', 1)
setProperty('camZooming', true)
setProperty('bg.alpha', 1)
setProperty('funnyBlack.alpha', 0)
setProperty('gfSpeed', 1)
end
if v1 == 'scary' then
doTweenZoom('zoom1', 'camGame', 1.55, 14, 'sineInOut')
doTweenAlpha('scary', 'black', 0.8, 5, 'sineIn');
setProperty('camZooming', false)
end
if v1 == 'no' then
doTweenZoom('zoom2', 'camGame', 1.05, 0.5, 'sineInOut')
doTweenAlpha('scary2', 'black', 0, 0.5, 'sineIn');
setProperty('camZooming', true)
end
if v1 == 'p2' then
doTweenAlpha('off3', 'funnyBlack', 0.6, 0.5, 'sineIn');
doTweenAlpha('off4', 'bg', 0.3, 0.5, 'sineIn');
    end
  end
end