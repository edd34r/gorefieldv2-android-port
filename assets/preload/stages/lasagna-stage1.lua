function onCreate()
setProperty('camZooming', true)
setProperty('camHUD.alpha', 0)
makeLuaSprite("color", "", 0, 0)
makeGraphic("color", 1280, 720, "0x527F3A")
addLuaSprite("color", false)
setObjectCamera("color", 'other')
scaleObject('color', 1, 1)
setProperty('color.alpha', 1)

makeLuaSprite('BG1', 'stages/lasagna/BG_2', -210, -140)
addLuaSprite('BG1', false)
scaleObject('BG1', 0.5, 0.5)
setScrollFactor('BG1', 1, 1)

makeLuaSprite('BG', 'stages/lasagna/BG_1', -220, -140)
addLuaSprite('BG', false)
scaleObject('BG', 0.5, 0.5)
setScrollFactor('BG', 1, 1)

makeAnimatedLuaSprite('cat', 'stages/lasagna/dodge-lasagna-cat', 490, -100)
addLuaSprite('cat', false)
addAnimationByPrefix('cat', 'run', 'LASAGNA CAT SCAPE', 24, false)
addAnimationByPrefix('cat', 'attack', 'LASAGNA CAT ATACK', 24, false)
addAnimationByPrefix('cat', 'idle', 'LASAGNA CAT 0 IDLE', 24, true)
scaleObject('cat', 0.5, 0.5)
setProperty('cat.alpha', 0)

makeAnimatedLuaSprite('cat_BG', 'stages/lasagna/LASAGNA_CAT_BG_COLOR', 450, -50)
addLuaSprite('cat_BG', true)
addAnimationByPrefix('cat_BG', 'hi', 'LASAGNA CAT RUN BG', 19, false)
scaleObject('cat_BG', 1, 1)
setProperty('cat_BG.visible', false)

makeLuaSprite('intro', 'logo/Fast_delivery', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')
end

function onUpdate()
     if inGameOver then
setProperty('cameraSpeed', '10000')
end
end

function onSongStart()
runTimer('intro',0.1)
doTweenAlpha('intro2', 'color', 0, 4.5, 'sineIn');

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
   if v1 == 'HUD' then
doTweenAlpha('HUD', 'camHUD', 1, 0.5, 'sineIn');
end
if v1 == 'cutscene' then
setProperty('cutscene.alpha', 1)
playAnim("cutscene","something",true);
end
if v1 == 'monster' then
triggerEvent('Camera Follow Pos', 700, 450)
setProperty('cat_BG.visible', true)
doTweenAlpha('AlphaHUD', 'camHUD', 0, 0.5, linear)
playAnim("cat_BG","hi",true);
end
if v1 == 'cat' then
setProperty('cat_BG.visible', false)
cameraFlash('hud', 'D6E299', '1')
setProperty('cat.alpha', 1)
setProperty('cutscene.alpha', 0)
setProperty('camHUD.alpha', 1)
end
if v1 == 'green' then
doTweenAlpha('GreenScreem', 'color', 1, 0.7, linear)
  end
 end
end