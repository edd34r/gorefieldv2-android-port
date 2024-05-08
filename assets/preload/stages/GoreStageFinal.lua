function onCreatedPost()
setHealthBarColors('000000', 'AC424D')
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end

function onCreate()

makeLuaSprite('BG2', 'stages/GoreStage/bg', -1460, -1390)
addLuaSprite('BG2', false)
scaleObject('BG2', 1.3, 1.3)

makeLuaSprite('clouds1', 'stages/GoreDtage/clouds', -1390, -820)
addLuaSprite('clouds1', false)
scaleObject('clouds1', 1.3, 1.3)

makeLuaSprite('clouds2', 'stages/GoreDtage/clouds', 90, -820)
addLuaSprite('clouds2', false)
scaleObject('clouds2', 1.3, 1.3)

makeLuaSprite('clouds3', 'stages/GoreDtage/clouds', 1190, -820)
addLuaSprite('clouds3', false)
scaleObject('clouds3', 1.3, 1.3)
end

function onSongStart()
doTweenAlpha('b', 'funnyBlack', 0, 0.5, 'sineIn');
doTweenAlpha('noBF', 'boyfriend', 0, 0.01, 'sineIn');
doTweenAlpha('noCAT', 'dad', 0, 0.01, 'sineIn');
runTimer('red',0.1)

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
if v1 == 'on' then
runTimer('red',0.1)
end
if v1 == 'intro' then
runTimer('intro',0.1)
end
if v1 == 'dad' then
doTweenAlpha('cat', 'dad', 1, 0.5, 'sineIn');
end
if v1 == 'player' then
doTweenAlpha('f', 'boyfriend', 1, 0.5, 'sineIn');
end
if v1 == 'dad' then
doTweenAlpha('cat', 'dad', 1, 0.5, 'sineIn');
end
if v1 == 'HUD' then
setHealthBarColors('000000', 'AC424D')
end
if v1 == 'HUDwhite' then
setHealthBarColors('000000', 'FFFFFF')
setProperty('health.visible', false);
setProperty('health2.alpha', 1)
setProperty('icons2.visible', false);
setProperty('icons1.visible', false);
setProperty('icons3.visible', true);
setProperty('icons4.visible', true);
cameraShake('hud', '0.01', '5')
setProperty('PS.visible', false)
setProperty('PS-gray.visible', true)
setProperty('health_filler.visible', false)
setProperty('health_filler2.visible', true)
end
if v1 == 'end' then
doTweenAlpha('byebeee', 'camGame', 0, 1.5, 'sineIn');
  end
 end
end