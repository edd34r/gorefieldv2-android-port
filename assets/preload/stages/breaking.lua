function onCreatePost()
triggerEvent('Camera Follow Pos', 726, 450)
setProperty('cameraSpeed', '10000')
end

function onUpdatePost()
setProperty('camHUD.zoom', 1)
end

function onCreate()
makeAnimatedLuaSprite('BG', 'stages/walter/BG_WALTER', 180, 260)
addLuaSprite('BG', false)
addAnimationByPrefix('BG', 'BG CASA', 'BG CASA', 24, true)
scaleObject('BG', 1, 1)

makeAnimatedLuaSprite('PATAS', 'stages/walter/PATAS_WALTER', 100, 240)
addLuaSprite('PATAS', false)
addAnimationByPrefix('PATAS', 'WALTER PATAS IDLE', 'WALTER PATAS IDLE', 24, true)
scaleObject('PATAS', 1.3, 1.3)

makeAnimatedLuaSprite('BG2', 'stages/walter/BG_JESSEE', 610, 150)
addLuaSprite('BG2', true)
addAnimationByPrefix('BG2', 'casas', 'casas', 24, true)
scaleObject('BG2', 1, 1)

makeAnimatedLuaSprite('BG3', 'stages/walter/BG_JESSEE_2', 610, 250)
addLuaSprite('BG3', false)
addAnimationByPrefix('BG3', 'BG JESSE 2', 'BG JESSE 2', 24, true)
scaleObject('BG3', 1, 1)

makeAnimatedLuaSprite('CAR', 'stages/walter/CAR_ENDING', 610, 250)
addLuaSprite('CAR', true)
addAnimationByPrefix('CAR', 'END', 'END', 24, false)
scaleObject('CAR', 1, 1)

makeLuaSprite('intro', 'logo/breakin_cat_logo', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)


setObjectOrder('BG2', getObjectOrder('gfGroup') + 0);


setProperty('BG2.visible', true);
setProperty('CAR.visible', false);
end

function onUpdate()
setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)
end

function onSongStart()
runTimer('intro',0.1)
doTweenAlpha("shiiii", "funnyBlack", 0, 2, "quartIn")

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