function onCreate()
makeLuaSprite('BG', 'stages/clown/Clown_Stage_Floor', -1260, -420)
addLuaSprite('BG', false)
scaleObject('BG', 12.2, 12.2)

makeLuaSprite('BG2', 'stages/clown/Clown_Stage_face_1', -1210, -570)
addLuaSprite('BG2', false)
scaleObject('BG2', 12, 12)

makeLuaSprite('light', 'stages/clown/Clown_Stage_ligth', -100, 270)
addLuaSprite('light', true)
scaleObject('light', 4.7, 4.7)
setProperty('light.alpha', 0.4)
setProperty('light.visible', false);

makeLuaSprite("funnyBlackBG", "", 0, 0)
makeGraphic("funnyBlackBG", 1280, 720, "0xFF000000")
addLuaSprite("funnyBlackBG", false)
setProperty('funnyBlackBG.alpha', 0.8)
scaleObject('funnyBlackBG', 2.5, 2.5)

makeLuaSprite("funnyBlack2", "", 0, 0)
makeGraphic("funnyBlack2", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack2", 'hud')
addLuaSprite("funnyBlack2", false)
setProperty('funnyBlack2.alpha', 1)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)
setProperty('funnyBlack.alpha', 1)

makeAnimatedLuaSprite('binkylaugh', 'stages/Clown/BinkyLaugh', 0, 0)
addLuaSprite('binkylaugh', false)
addAnimationByPrefix('binkylaugh', 'laugh', 'laugh', 10, true)
scaleObject('binkylaugh', 0.7, 0.7)
setProperty('binkylaugh.alpha', 0)
setObjectCamera('binkylaugh', 'Other')
screenCenter('binkylaugh','xy')
end

function onStartCountdown()

setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)

setPropertyFromGroup('playerStrums',0,'alpha',0)
setPropertyFromGroup('playerStrums',1,'alpha',0)
setPropertyFromGroup('playerStrums',2,'alpha',0)
setPropertyFromGroup('playerStrums',3,'alpha',0)

setProperty('health.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('health_filler.alpha', 0)
setProperty('iconP1.alpha', 0)   
setProperty('iconP2.alpha', 0)   
setProperty('scoreTxt.alpha', 0)   
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'changecamera' then
doTweenZoom('canera', 'camGame', 0.33, 0.001, 'sineInOut')
setProperty('defaultCamZoom', 0.33)
triggerEvent('Camera Follow Pos', 750, 700)
setProperty('cameraSpeed', '10000')
setProperty('funnyBlackBG.alpha', 0)
setProperty('health.alpha', 1)
setProperty('healthBar.alpha', 1)
setProperty('health_filler.alpha', 1)
setProperty('iconP1.alpha', 1)   
setProperty('iconP2.alpha', 1)   
setProperty('scoreTxt.alpha', 1)   

setPropertyFromGroup('opponentStrums',0,'alpha',1)
setPropertyFromGroup('opponentStrums',1,'alpha',1)
setPropertyFromGroup('opponentStrums',2,'alpha',1)
setPropertyFromGroup('opponentStrums',3,'alpha',1)

end
if v1 == 'black' then
doTweenAlpha("shit336", "funnyBlack2", 0, 2.5, "quartIn")
end
if v1 == 'light' then
setProperty('BG2.visible', false);
doTweenZoom('canera', 'camGame', 1, 0.001, 'sineInOut')
triggerEvent('Camera Follow Pos', 700, 650)
setProperty('BG.visible', false);
setProperty('dad.visible', false);
setProperty('light.visible', true);
setProperty('defaultCamZoom', 1)   
end
if v1 == 'bye' then
doTweenAlpha('bye12', 'boyfriend', 0, 1.5, 'sineIn');
doTweenAlpha('bye13', 'dad', 0, 1.5, 'sineIn');
end
if v1 == 'd' then
setProperty('dad.visible', true);
end
if v1 == 'bf' then
triggerEvent('Change Character', 'bf', 'Bf_alt')
doTweenAlpha('hi13', 'boyfriend', 1, 1.5, 'sineIn');
end
if v1 == 'cam' then
setProperty('camGame.visible', true);
setProperty('camHUD.visible', true);
setProperty('camHUD.alpha', 1);
setProperty('camGame.alpha', 1);
setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)

setPropertyFromGroup('playerStrums',0,'alpha',1)
setPropertyFromGroup('playerStrums',1,'alpha',1)
setPropertyFromGroup('playerStrums',2,'alpha',1)
setPropertyFromGroup('playerStrums',3,'alpha',1)

setProperty('health.alpha', 1)
setProperty('healthBar.alpha', 1)
setProperty('health_filler.alpha', 1)
setProperty('iconP1.alpha', 1)   
setProperty('iconP2.alpha', 1)   
setProperty('scoreTxt.alpha', 1)
end
end
end
