function onCreate()
makeLuaSprite('BG', 'stages/prision/BG3', 30, 230)
addLuaSprite('BG', false)
scaleObject('BG', 1, 1)

makeAnimatedLuaSprite('trueno', 'stages/prision/trueno', 530, 60)
addLuaSprite('trueno', false)
addAnimationByPrefix('trueno', 'truenito', 'truenito', 24, true)
scaleObject('trueno', 1, 1)

makeLuaSprite('BG1', 'stages/prision/suelo', -300, -360)
addLuaSprite('BG1', false)
scaleObject('BG1', 1.4, 1.4)

makeAnimatedLuaSprite('lyman', 'characters/lyman_prison', 400, -140)
addLuaSprite('lyman', false)
addAnimationByPrefix('lyman', 'idle', 'lyman idle', 24, true)
scaleObject('lyman', 0.8, 0.8)

makeLuaSprite('BG2', 'stages/prision/entrada', -250, -240)
addLuaSprite('BG2', false)
scaleObject('BG2', 1.2, 1.2)

makeLuaSprite('BG3', 'stages/prision/Barril', -390, 840)
addLuaSprite('BG3', true)
scaleObject('BG3', 1.4, 1.4)

makeLuaSprite('BG4', 'stages/prision/BG1', -240, -120)
addLuaSprite('BG4', false)
scaleObject('BG4', 1.1, 1.1)

makeLuaSprite('Red', 'stages/prision/Peligro', 0, 0)
addLuaSprite('Red', false)
scaleObject('Red', 1, 1)
screenCenter('Red', 'xy')
setObjectCamera('Red', 'hud')
setProperty('Red.alpha', 1)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)

makeLuaSprite("funnyBlack3", "", -150, 0)
makeGraphic("funnyBlack3", 1280, 720, "0xFF000000")
addLuaSprite("funnyBlack3", true)
setProperty('funnyBlack3.alpha', 0)
scaleObject('funnyBlack3', 10, 10)

setProperty('trueno.visible', false);
setProperty('BG3.visible', false);
setProperty('BG2.visible', false);
setProperty('BG1.visible', false);
setProperty('Red.visible', false);
setProperty('lyman.visible', false);

--text
makeLuaText('dont', '¡¡DONT FAIL!!', 350, 300, 300)
	addLuaText('dont')
	setTextColor('dont', 'FF4D00')
  setTextAlignment('dont', 'center')
	setTextFont('dont', 'Harbinger_Caps.ttf')
scaleObject('dont', 2, 2)
setTextSize('dont', 30)
setProperty('dont.alpha', 0)

makeLuaText('you', '¡¡YOU HAVE LITTLE HEALTH!!', 850, -200, 400)
	addLuaText('you')
	setTextColor('you', 'FF4D00')
  setTextAlignment('you', 'center')
	setTextFont('you', 'Harbinger_Caps.ttf')
scaleObject('you', 2, 2)
setTextSize('you', 30)
setProperty('you.alpha', 0)
end

function onUpdate(elapsed)
if curBeat >= 1 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.75)
        else
            setProperty('defaultCamZoom', 0.85)
       end
    end
if curBeat > 177 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.9)
        else
            setProperty('defaultCamZoom', 0.75)
          end
         end
          if curBeat > 292 then
        if mustHitSection then
            setProperty('defaultCamZoom', 0.75)
        else
            setProperty('defaultCamZoom', 0.75)
        end
    end
end

function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'part2' then
setProperty('BG4.visible', false);
setProperty('BG3.visible', true);
setProperty('BG2.visible', true);
setProperty('BG1.visible', true);
setProperty('camGame.visible', true);
setProperty('camHUD.visible', true);
setProperty('lyman.visible', true);
setProperty('Red.visible', true);
setProperty('Red.alpha', 0.5);
cameraFlash('other', '000000', '1.5')
end
if v1 == 'part3' then
setProperty('trueno.visible', true);
setProperty('defaultCamZoom', 0.75)
setProperty('Red.alpha', 1);
setProperty('BG3.visible', false);
setProperty('healthBar.visible', false)
setProperty('health.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('BG2.visible', false);
setProperty('BG1.visible', false);
setProperty('BG4.visible', false);
setProperty('BG.visible', true);
setProperty('lyman.visible', false);
triggerEvent('Camera Follow Pos', 850, 650)
setProperty('cameraSpeed', '10000')
runTimer('text',1)
cameraFlash('other', '000000', '1.7')
end
if v1 == 'end' then
doTweenZoom('zoom5', 'camGame', 5.5, 4.5, 'sineInOut')
doTweenAlpha("cameme", "camGame", 0, 0.6, "quartIn")
doTweenAlpha("cameme2", "camHUD", 0, 0.6, "quartIn")
end
if v1 == 'black' then
doTweenAlpha("b", "funnyBlack3", 0.5, 0.01, "quartIn")
end
if v1 == 'noblack' then
doTweenAlpha("b", "funnyBlack3", 0, 0.5, "quartIn")
end
end
end