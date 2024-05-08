function onCreatePost()
setProperty('gf.visible',false);
end

function onCreate()
makeLuaSprite('white', 'stages/sans/v', 0, 0)
addLuaSprite('white', true)
scaleObject('white', 1, 1)
setObjectCamera('white', 'other')
setProperty('white.alpha', 1)
screenCenter('white','xy')

makeAnimatedLuaSprite('snow', 'stages/sans/Snow-Storm', 0, 0)
addAnimationByPrefix('snow', 'tormenta', 'tormenta', 24, true)
addLuaSprite('snow', false)
scaleObject('snow', 1, 1)
setObjectCamera('snow', 'hud')
setProperty('snow.alpha', 1)
screenCenter('snow','xy')

makeLuaSprite('BG2', 'stages/sans/marco_UNDERTALE_1', -10, 220)
addLuaSprite('BG2', true)
scaleObject('BG2', 1, 1)
setProperty('BG2.visible',false);

makeAnimatedLuaSprite('BG3', 'stages/sans/bones', 60, -660)
addLuaSprite('BG3', false)
addAnimationByPrefix('BG3', 'bones', 'bones', 24, true)
scaleObject('BG3', 1, 1)

makeLuaSprite('BG1', 'stages/sans/sansfield_cave', -650, -420)
addLuaSprite('BG1', false)
scaleObject('BG1', 1.5, 1.5)

makeLuaSprite('ice', 'stages/sans/sansfield_ice', -230, 250)
addLuaSprite('ice', false)
scaleObject('ice', 1, 1)

makeLuaSprite('BG', 'stages/sans/sansfield_bg', -660, -410)
addLuaSprite('BG', false)
scaleObject('BG', 1.5, 1.5)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite('intro', 'logo/CatPatella', 250, 760)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera("intro", 'other')
end

function onStartCountdown()
doTweenAlpha('black', 'funnyBlack', 0, 1.5, 'sineIn');
doTweenZoom('zoom', 'camGame', 0.6, 1.5, 'sineInOut')
doTweenAlpha('white0', 'white', 0, 0.6, 'sineIn');
setProperty('defaultCamZoom', 0.6)
end

function onSongStart()
doTweenY("intro", "intro", 460, 1, "sineOut")
doTweenAlpha('introd', 'intro', 1, 0.5, 'sineIn');
runTimer('ice',0.2)
runTimer('noIntro',2.3)

function onTimerCompleted(t,l,ll)
if t == 'noIntro' then
doTweenY("introX", "intro", 760, 1, "sineOut")
doTweenAlpha('nointro', 'intro', 0, 0.3, 'sineIn');
end
if t == 'ice' then
doTweenX("ice2", "ice", 2100, 3.5, "sineOut")
runTimer('noice',3.5)
end
if t == 'noice' then
setProperty('ice.x', -300)
runTimer('ice',2)
end
end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'jon' then
setProperty('gf.visible',true);
triggerEvent('Play Animation','where', 'gf')
triggerEvent('Change Character', 'gf', 'jon-black-ni')
setProperty('defaultCamZoom', 0.85)
end
if v1 == 'part2' then
setProperty('BG.visible',false);
setProperty('BG1.visible',false);
setProperty('white.visible',false);
setProperty('snow.visible',false);
setProperty('white.visible',false);
setProperty('ice.visible',false);
setProperty('BG2.visible',true);
setProperty('icons1.visible', false);
setProperty('icons2.visible', true);
end
if v1 == '1' then
setProperty('camHUD.visible',false);
setProperty('camGame.visible',false);
end
if v1 == '0' then
setProperty('camHUD.visible',true);
setProperty('camGame.visible',true);
   end
 end
end
