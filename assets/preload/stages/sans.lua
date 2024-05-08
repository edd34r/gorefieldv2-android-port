function onCreatePost()
setProperty('gf.visible',false);
setProperty('iconP1.visible',false);
end

function onCreate()
setProperty('camZooming', true)

makeLuaSprite('BG', 'stages/sans/marco_UNDERTALE_1', -10, 220)
addLuaSprite('BG', true)
scaleObject('BG', 1, 1)
setProperty('BG.alpha', 0)

makeAnimatedLuaSprite('BG1', 'stages/sans/bones', 60, -660)
addLuaSprite('BG1', false)
addAnimationByPrefix('BG1', 'bones', 'bones', 24, true)
scaleObject('BG1', 1, 1)
setProperty('BG1.alpha', 0)

makeLuaSprite('intro', 'logo/Mondaylovania', 250, 760)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera("intro", 'other')

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite("funnyWhite", "", 0, 0)
makeGraphic("funnyWhite", 1280, 720, "0xFFFFFFF")
setObjectCamera("funnyWhite", 'other')
addLuaSprite("funnyWhite", false)
setProperty('funnyWhite.alpha', 0)
end

function onSongStart()
doTweenY("intro", "intro", 460, 1, "sineOut")
doTweenAlpha('introd', 'intro', 1, 0.5, 'sineIn');
runTimer('noIntro',2.3)
runTimer('black',1)

function onTimerCompleted(t,l,ll)
if t == 'noIntro' then
doTweenY("introX", "intro", 760, 1, "sineOut")
doTweenAlpha('nointro', 'intro', 0, 0.3, 'sineIn');
end
if t == 'black' then
doTweenAlpha('blak', 'funnyBlack', 0, 1.5, 'sineIn');
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'bg' then
doTweenAlpha('hud', 'camHUD', 1, 0.5, 'sineIn');
setProperty('defaultCamZoom', 0.65)
doTweenAlpha('bg', 'BG', 1, 0.5, 'sineIn');
doTweenAlpha('bg2', 'BG1', 1, 0.5, 'sineIn');
end
if v1 == 'healthbar' then
setProperty('health.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('scoreTxt.alpha', 0)
setProperty('icons1.visible', false);
setProperty('health_filler.visible', false);
end
if v1 == 'gf' then
setProperty('gf.visible', true)
end
if v1 == 'white' then
doTweenAlpha('FadeWhite', 'funnyWhite', 1, 1.5, 'sineIn');
end
if v1 == 'end' then
doTweenAlpha('FadeWhite0', 'funnyWhite', 0, 0.5, 'sineIn');
setProperty('camGame.visible', false);
setProperty('camHUD.visible', false);
   end
 end
end