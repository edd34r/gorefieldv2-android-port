function onCreate()
makeLuaSprite('MENU', 'stages/walter/MENU_BREAKING', -10, 0)
addLuaSprite('MENU', false)
scaleObject('MENU', 1.02, 1.02)
setScrollFactor('MENU', 1, 1)
setObjectCamera('MENU', 'hud')
setProperty('MENU.alpha', 1)

makeLuaSprite('MENU_DOWNSCROLL', 'stages/walter/MENU_BREAKING_DOWNSCROLL', -10, 0)
addLuaSprite('MENU_DOWNSCROLL', false)
scaleObject('MENU_DOWNSCROLL', 1.01, 1.01)
setScrollFactor('MENU_DOWNSCROLL', 1, 1)
setObjectCamera('MENU_DOWNSCROLL', 'hud')
setProperty('MENU_DOWNSCROLL.alpha', 0)

makeAnimatedLuaSprite('DANGER', 'stages/walter/DANGER', 315, 80)
addLuaSprite('DANGER', false)
addAnimationByPrefix('DANGER', 'DANGER', 'DANGER', 24, true)
scaleObject('DANGER', 1, 1)
setObjectCamera('DANGER', 'hud')

makeAnimatedLuaSprite('PS', 'stages/walter/BREAKING_LIFES', 50, 90)
addLuaSprite('PS', false)
addAnimationByPrefix('PS', '3', 'LIFES MINUS 3', 24, false)
addAnimationByPrefix('PS', '2', 'LIFES MINUS 2', 24, false)
addAnimationByPrefix('PS', '1', 'LIFES MINUS 1', 24, false)
addAnimationByPrefix('PS', '4', 'LIFES 4', 24, false)
scaleObject('PS', 1.2, 1.2)
setObjectCamera('PS', 'hud')
end

function onUpdate()
setProperty('timeBar.alpha', 0)
setProperty('timeBarBG.alpha', 0)
setProperty('timeTxt.alpha', 0)   

setProperty('healthBar.alpha', tonumber(0))
    setProperty('iconP1.alpha', tonumber(0))
    setProperty('iconP2.alpha', tonumber(0))

setPropertyFromGroup('opponentStrums',0,'alpha',0)
setPropertyFromGroup('opponentStrums',1,'alpha',0)
setPropertyFromGroup('opponentStrums',2,'alpha',0)
setPropertyFromGroup('opponentStrums',3,'alpha',0)

for i = 0,7 do
setPropertyFromGroup('strumLineNotes', i, 'scale.x', 1.1)
setPropertyFromGroup('strumLineNotes', i, 'scale.y', 1.1)
    setPropertyFromGroup('unspawnNotes', i, 'scale.x', 1.1)
    setPropertyFromGroup('unspawnNotes', i, 'scale.y', 1.1)
end
end

function onCreatePost()
if downscroll == false then
setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - -120);
setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumX0 - 650);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - -100);
setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumX0 - 650);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - -80);
setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumX0 - 650);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - -60);
setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumX0 - 650);

setProperty('scoreTxt.y', 690)
end
if downscroll == true then
setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - -110);
setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumX0 - 160);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - -90);
setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumX0 - 160);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - -70);
setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumX0 - 160);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - -50);
setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumX0 - 160);

triggerEvent('Camera Follow Pos', 731, 520)

setProperty('PS.y', 600)
setProperty('scoreTxt.y', 20)
setProperty('DANGER.y', 570)

setProperty('MENU.alpha', 0)
setProperty('MENU_DOWNSCROLL.alpha', 1)
end
if middlescroll and not downscroll == true then
setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - -443);
setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumX0 - 325);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - -425);
setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumX0 - 325);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - -405);
setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumX0 - 325);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - -388);
setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumX0 - 325);

setProperty('scoreTxt.y', 690)
end
if middlescroll and downscroll == true then
setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0 - -440);
setPropertyFromGroup('playerStrums', 0, 'y', defaultPlayerStrumX0 - -170);
        setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1 - -420);
setPropertyFromGroup('playerStrums', 1, 'y', defaultPlayerStrumX0 - -170);
        setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2 - -400);
setPropertyFromGroup('playerStrums', 2, 'y', defaultPlayerStrumX0 - -170);
        setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3 - -380);
setPropertyFromGroup('playerStrums', 3, 'y', defaultPlayerStrumX0 - -170);

triggerEvent('Camera Follow Pos', 730, 520)

setProperty('PS.y', 600)
setProperty('scoreTxt.y', 20)
setProperty('DANGER.y', 570)

setProperty('MENU.alpha', 0)
setProperty('MENU_DOWNSCROLL.alpha', 1)
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if curBeat % 1 == 0 then


        cancelTween("scoreTxtX")
        cancelTween("scoreTxtY")
       scaleObject('scoreTxt', 1, 1)
        doTweenX("scoreTxtX", "scoreTxt.scale", 1, 0.3, "sineOut")
        doTweenY("scoreTxtY", "scoreTxt.scale", 1, 0.2, "sineOut")
    end

end

