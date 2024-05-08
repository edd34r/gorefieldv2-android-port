function onCreatePost()
setProperty('gf.visible',false);
end

function onCreate()
makeLuaSprite("color", "", 0, 0)
makeGraphic("color", 1280, 720, "0x527F3A")
addLuaSprite("color", false)
setObjectCamera("color", 'other')
scaleObject('color', 1, 1)
setProperty('color.alpha', 1)

makeLuaSprite('BG', 'stages/lasagna/Lasagna_Boy_Stage_Floor', -220, -60)
addLuaSprite('BG', false)
scaleObject('BG', 6.5, 6.5)
setScrollFactor('BG', 1, 1)

makeLuaSprite('BG1', 'stages/lasagna/Lasagna_Boy_Stage_Walls', -250, -60)
addLuaSprite('BG1', false)
scaleObject('BG1', 6.7, 6.7)
setScrollFactor('BG1', 1, 1)

makeAnimatedLuaSprite('cat', 'stages/lasagna/LASAGNA_CAT', -250, 100)
addLuaSprite('cat', true)
addAnimationByPrefix('cat', 'LASAGNA_CAT _RUN', 'LASAGNA_CAT _RUN', 20, true)
scaleObject('cat', 0.5, 0.5)
setProperty('cat.alpha', 0)

makeLuaSprite('intro', 'logo/Health_Inspection', 0, 0)
addLuaSprite('intro', true)
scaleObject('intro', 1, 1)
setProperty('intro.alpha', 0)
setObjectCamera('intro', 'Other')
screenCenter('intro','xy')

makeLuaSprite('floor', 'stages/lasagna/floor2', 0, 0)
addLuaSprite('floor', true)
scaleObject('floor', 1, 1)
setProperty('floor.alpha', 0)
setObjectCamera('floor', 'other')
screenCenter('floor','xy')

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
if v1 == 'cutscene' then
setProperty('cutscene.alpha', 1)
playAnim("cutscene","ohno",true);
setProperty('health.visible',false);
setProperty('health_filler.visible',false);
setProperty('healthBar.visible',false);
setProperty('healthBarBG.visible',false);
setProperty('iconP1.visible',false);
setProperty('iconP2.visible',false);
setProperty('scoreTxt.visible',false);
end
if v1 == 'byecolor' then
doTweenAlpha('cock', 'color', 0, 1, 'sineIn');
doTweenAlpha('cock3', 'floor', 0, 1, 'sineIn');
end
if v1 == 'floor 2' then
doTweenAlpha('cock2', 'floor', 1, 0.5, 'sineIn');
end
if v1 == 'intro' then
runTimer('intro',0.1)
end
if v1 == 'nocutscene' then
cameraFlash('hud', 'D6E299', '1')
setProperty('cutscene.alpha', 0)
setProperty('health.visible',true);
setProperty('health_filler.visible',true);
setProperty('healthBar.visible',true);
setProperty('healthBarBG.visible',true);
setProperty('iconP1.visible',true);
setProperty('iconP2.visible',true);
setProperty('scoreTxt.visible',true);
end
if v1 == 'gf' then
setProperty('gf.visible',true);
end
if v1 == 'catrun' then
setProperty('cat.alpha', 1)
doTweenX("cat", "cat", 1650, 1.3, "sineOut")
setProperty('dad.visible',false);
end
if v1 == 'boy' then
setProperty('gf.visible',false);
setProperty('dad.visible',true);
end
if v1 == 'health' then
doTweenAlpha('tweenHealth', 'healthBar', 0, 1, linear)
doTweenAlpha('tweeniconP1', 'iconP1', 0, 1, linear)
doTweenAlpha('tweeniconP2', 'iconP2', 0, 1, linear)
doTweenAlpha('tweenScore', 'scoreTxt', 0, 1, linear)
doTweenAlpha('tweenHealthGreem', 'health', 0, 1, linear)
doTweenAlpha('tweenHealthGreeeen', 'health_filler', 0, 1, linear)
end
if v1 == 'healthyes' then
doTweenAlpha('Health', 'healthBar', 1, 0.5, linear)
doTweenAlpha('iconP1', 'iconP1', 1, 0.5,  linear)
doTweenAlpha('iconP2', 'iconP2', 1, 0.5, linear)
doTweenAlpha('Score', 'scoreTxt', 1, 0.5, linear)
doTweenAlpha('HealthGreem', 'health', 1, 0.5, linear)
doTweenAlpha('tweenHealthGreeeen', 'health_filler', 1, 0.5, linear)
end
if v1 == 'z' then
doTweenZoom('zoom3', 'camGame', 1.2, 11.5, 'sineInOut')
doTweenX('gameScrollx', 'camGame.scroll', 350, 11.5, 'sineInOut')
doTweenY('gameScrollY', 'camGame.scroll', 150, 11.5, 'sineInOut')
  end
 end
end