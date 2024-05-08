function onCreate()
setProperty('skipCountdown', true)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'hud')
addLuaSprite("funnyBlack", true)
scaleObject('funnyBlack', 5, 5)
screenCenter('funnyBlack','xy')
setProperty('funnyBlack.alpha', 0)

makeLuaSprite("funnyBlack2", "", 0, 0)
makeGraphic("funnyBlack2", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack2", 'other')
addLuaSprite("funnyBlack2", false)
setProperty('funnyBlack2.alpha', 0)

makeLuaSprite('BG', 'stages/god/BG_GOD', -600, -160)
addLuaSprite('BG', false)
scaleObject('BG', 1, 1)

makeLuaSprite('BG1', 'stages/god/ANGEL_BG', -310, -1200)
addLuaSprite('BG1', false)
scaleObject('BG1', 0.8, 0.8)

makeAnimatedLuaSprite('aro', 'stages/god/ALO', -900, -100)
addLuaSprite('aro', false)
addAnimationByPrefix('aro', 'aro', 'aro', 24, true)
scaleObject('aro', 1.4, 1.4)
setProperty('aro.flipX', true) 

makeAnimatedLuaSprite('aro2', 'stages/god/ALO', 1100, -100)
addLuaSprite('aro2', false)
addAnimationByPrefix('aro2', 'aro', 'aro', 24, true)
scaleObject('aro2', 1.4, 1.4)

makeLuaSprite("funnyBlackBG", "", -550, -250)
addLuaSprite('funnyBlackBG', false)
makeGraphic("funnyBlackBG", 1280, 720, "0xFF000000")
scaleObject('funnyBlackBG', 100, 100)
setProperty('funnyBlackBG.alpha', 0)
setScrollFactor('funnyBlackBG',0,0)
--part2 

makeLuaSprite('BG3', 'stages/god/BG_GOD_GOREFIELD', 310, -110)
addLuaSprite('BG3', false)
scaleObject('BG3', 1, 1)

makeLuaSprite('TV', 'stages/god/TV_GOD', 640, 320)
addLuaSprite('TV', false)
scaleObject('TV', 1, 1)

setObjectOrder('TV', getObjectOrder('dadGroup') + 0);
setObjectOrder('gfGroup', getObjectOrder('TV') + 1);

--part3
makeLuaSprite('BG4', 'stages/god/BG_LASAGNA_GOD', -840, -320)
addLuaSprite('BG4', false)
scaleObject('BG4', 1, 1)

--part4
makeLuaSprite('marco', 'stages/god/marco_UNDERTALE_GOD', 0, 400)
addLuaSprite('marco', true)
scaleObject('marco', 1, 1)
setScrollFactor('marco', 1, 1)

makeAnimatedLuaSprite('bones', 'stages/god/BONES_GOD', 130, -340)
addLuaSprite('bones', true)
addAnimationByPrefix('bones', 'bones', 'bones', 24, true)
scaleObject('bones', 0.8, 0.8)
setScrollFactor('bones', 1, 1)

--part5
makeAnimatedLuaSprite('viento', 'stages/god/viento', 80, -150)
addLuaSprite('viento', false)
addAnimationByPrefix('viento', 'vientitoo', 'vientitoo', 24, true)
scaleObject('viento', 1, 1)

makeAnimatedLuaSprite('rayo', 'stages/god/RAYO_DIVISOR', 10, 270)
addLuaSprite('rayo', true)
addAnimationByPrefix('rayo', 'rayo divisor', 'rayo divisor', 24, true)
scaleObject('rayo', 1, 1)

--HIDE
setProperty('BG.alpha', 0.3)
setProperty('BG1.alpha', 1)
setProperty('aro.alpha', 1)
setProperty('aro2.alpha', 1)

setProperty('BG3.alpha', 0)
setProperty('TV.alpha', 0)

setProperty('BG4.alpha', 0)

setProperty('marco.alpha', 0)
setProperty('bones.alpha', 0)

setProperty('rayo.alpha', 0)
setProperty('viento.alpha', 0)

--b
makeLuaSprite('black', 'stages/cry/black_vignette', 0, 0)
addLuaSprite('black', true)
scaleObject('black', 1, 1)
setScrollFactor('black',0,0)
setObjectCamera('black', 'hud')
screenCenter('black','xy')
setProperty('black.alpha', 0.6)
end

function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'part2' then
setProperty('BG.alpha', 0)
setProperty('BG1.alpha', 0)
setProperty('aro.alpha', 0)
setProperty('aro2.alpha', 0)

setProperty('BG3.alpha', 1)
setProperty('TV.alpha', 1)

cameraFlash('game', 'FFFFFF', '1')

doTweenAlpha("shit333", "funnyBlack2", 0, 0.7, "quartIn")

setProperty('defaultCamZoom', 1.15)

end
if v1 == 'part3' then
setProperty('BG4.alpha', 1)

doTweenAlpha("shit334", "funnyBlack2", 0, 0.3, "quartIn")
setProperty('defaultCamZoom', 1)

setProperty('BG3.alpha', 0)
setProperty('TV.alpha', 0)

setProperty('camGame.visble', true)

end
if v1 == 'part4' then
setProperty('BG4.alpha', 0)
setProperty('marco.alpha', 1)
setProperty('bones.alpha', 1)
setProperty('camHUD.alpha', 0)
doTweenAlpha("shit335", "funnyBlack2", 0, 0.3, "quartIn")

doTweenZoom('zoom', 'camGame', 0.35, 15, 'sineInOut')
setProperty('defaultCamZoom', 0.75)
end
if v1 == 'zoom' then
doTweenZoom('zoom1', 'camGame', 1.55, 11, 'sineInOut')
doTweenAlpha("BlackBG", "funnyBlackBG", 1, 10, "quartIn")
end
end
end