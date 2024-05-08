function onCreate()
setProperty('camZooming', true)
makeLuaSprite('bg', 'stages/GoreStage/bg_gorefield_1', -140, -240)
addLuaSprite('bg', false)
scaleObject('bg', 1, 1)

makeLuaSprite("funnyBlack2", "", -500, 0)
makeGraphic("funnyBlack2", 1280, 720, "0xFF000000")
addLuaSprite("funnyBlack2", true)
scaleObject('funnyBlack2', 10, 10)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite("funnyBlack3", "", -150, 0)
makeGraphic("funnyBlack3", 1280, 720, "0xFF000000")
addLuaSprite("funnyBlack3", true)
setProperty('funnyBlack3.alpha', 0)
scaleObject('funnyBlack3', 10, 10)

makeLuaSprite('intro', 'logo/Metamorfosis', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite('black', 'stages/GoreStage/black_vignette', -140, -240)
addLuaSprite('black', false)
scaleObject('black', 1, 1)
setProperty('black.alpha', 0.5)
setObjectCamera('black', 'hud')
screenCenter('black','xy')

setObjectOrder('funnyBlack2', getObjectOrder('dadGroup') + 0);
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
runTimer('noIntro',2.2)
end
if t == 'noIntro' then
doTweenAlpha('nointro', 'intro', 0, 0.5, 'sineIn');
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'blak' then
doTweenAlpha('blak', 'black', 0, 0.5, 'sineIn');
doTweenAlpha('blak1', 'funnyBlack', 0, 0.5, 'sineIn');
doTweenAlpha('blak5', 'funnyBlack2', 0, 0.5, 'sineIn');
end
if v1 == 'blak2' then
doTweenAlpha('blak3', 'funnyBlack2', 0.7, 0.5, 'sineIn');
doTweenAlpha('blak4', 'funnyBlack', 0, 2.5, 'sineIn');
end
if v1 == 'blackScreen' then
doTweenAlpha('pppp', 'funnyBlack3', 0.7, 0.5, 'sineOut');
end
if v1 == 'noblackScreen' then
doTweenAlpha('pppp2', 'funnyBlack3', 0, 0.3, 'sineOut');
end
if v1 == 'barfuck' then
setProperty('UpperBar.visible', false)
setProperty('LowerBar.visible', false)
   end
 end
end