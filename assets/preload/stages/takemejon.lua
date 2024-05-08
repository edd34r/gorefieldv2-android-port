function onCreate()
setProperty('iconP2.visible', false);
setProperty('camZooming', true)

makeAnimatedLuaSprite('piso', 'stages/takemejon/piso_transcion', -790, 500)
addLuaSprite('piso', false)
addAnimationByIndices('piso', 'o no', 'Símbolo 1', '35,36,37,38,39,4041,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88', 24)
addAnimationByPrefix('piso', 'Símbolo 10000', 'Símbolo 10000', 24, true)
scaleObject('piso', 1, 1)

makeLuaSprite('intro', 'logo/Take_me_jon', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera("intro", 'other')
screenCenter('intro','xy')

makeLuaSprite('BG', 'stages/takemejon/fondo', -1450, -655)
addLuaSprite('BG', false)
scaleObject('BG', 2, 2)

makeLuaSprite('BG1', 'stages/takemejon/mesa', -1780, -940)
addLuaSprite('BG1', false)
scaleObject('BG1', 2.3, 2.3)

makeLuaSprite('BG2', 'stages/takemejon/piso-del-fondo-negroooo', -860, -50)
addLuaSprite('BG2', false)
scaleObject('BG2', 1.4, 1.4)

makeLuaSprite('fof', 'stages/takemejon/fondo2', -310, -270)
addLuaSprite('fof', false)
scaleObject('fof', 1.2, 1.2)
setScrollFactor('fof', 1, 1)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0x000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

setProperty('piso.visible', false);
setProperty('BG.visible', false);
setProperty('BG1.visible', false);
setProperty('fof.visible', false);

setObjectOrder('BG1', getObjectOrder('gfGroup') + 0);
end

function onCreatePost()
setObjectCamera('dad', 'hud')
setObjectCamera('gf', 'hud')

setProperty('dad.x', -870)
setProperty('gf.x', -770)

makeLuaSprite('Blue', 'stages/takemejon/fondo-azuuuul', -850, -50)
addLuaSprite('Blue', false)
scaleObject('Blue', 0.8, 0.8)
setObjectCamera('Blue', 'hud')
end

function onSongStart()
doTweenAlpha('b', 'funnyBlack', 0, 3, 'sineIn');
setProperty('iconP2.visible', false);

function onTimerCompleted(t,l,ll)
if t == 'intro' then
doTweenAlpha('intro', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2.2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
runTimer('con',1.5)
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
if v1 == 'jon' then
doTweenX('Guy1', 'Blue', -150, 0.6, 'sineIn')
doTweenX('Guy2', 'gf', -110, 0.6, 'sineIn')
doTweenX('Guy3', 'dad', -400, 0.6, 'sineIn')
triggerEvent('Camera Follow Pos', 350, 750)
setProperty('cameraSpeed', '1')
end
if v1 == 'intro' then
runTimer('intro',0.1)
end
   if v1 == 'part2' then
setProperty('iconP2.visible', true);
setProperty('BG3.visible', false);
setProperty('Blue.visible', false);
setProperty('BG1.visible', false);
setProperty('BG.visible', true);
setProperty('BG1.visible', true);
triggerEvent('Camera Follow Pos', 730, 290)
setProperty('cameraSpeed', '10000')
doTweenZoom('zoom1', 'camGame', 0.4, 0.0001, 'sineInOut')
setProperty('defaultCamZoom', 0.4)
setObjectCamera('dad', 'game')
setObjectCamera('gf', 'game')
end
if v1 == 'part3' then
setProperty('iconP2.visible', true);
setProperty('BG.visible', false);
setProperty('BG1.visible', false);
setProperty('fof.visible', true);
triggerEvent('Camera Follow Pos', 750, 330)
doTweenZoom('zoom2', 'camGame', 0.6, 0.0001, 'sineInOut')
setProperty('defaultCamZoom', 0.6)
setProperty('cameraSpeed', '10000')
end
if v1 == 'end' then
doTweenAlpha('bye2', 'gf', 0, 1.3, 'sineIn');
doTweenAlpha('bye3', 'fof', 0, 1.3, 'sineIn');
end
if v1 == 'sad' then
setProperty('iconP2.visible', false);
setProperty('iconP2.visible', false);
setProperty('dad.visible', false);
setProperty('piso.visible', true);
triggerEvent('Camera Follow Pos', 950, 330)
cameraFlash('game', '000000', '1.3')
setProperty('cameraSpeed', '1')
end
if v1 == 'bg' then
playAnim("piso","o no",true);
end
if v1 == 'bye' then
setProperty('camZooming', false)
doTweenAlpha('byecar', 'boyfriend', 0, 14, 'sineIn');
doTweenX("catX", "boyfriend.scale", 0.01, 16, "sineIn")
doTweenY("catY", "boyfriend.scale", 0.01, 16, "sineIn")
end
end
end





























--https://youtu.be/y8DZMtBVMA4