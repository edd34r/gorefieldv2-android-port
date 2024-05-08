function onCreatePost()
for i = 0, 7 do

noteTweenAngle(i, i, 240, 0.001)
end


if downscroll and middlescroll == true then
setPropertyFromGroup('playerStrums', 0, 'y', 720);
        setPropertyFromGroup('playerStrums', 1, 'y', 720);
        setPropertyFromGroup('playerStrums', 2, 'y', 720);
        setPropertyFromGroup('playerStrums', 3, 'y', 720);

setPropertyFromGroup('opponentStrums', 0, 'y', 720);
        setPropertyFromGroup('opponentStrums', 1, 'y', 720);
        setPropertyFromGroup('opponentStrums', 2, 'y', 720);
        setPropertyFromGroup('opponentStrums', 3, 'y', 720);
end
if downscroll and middlescroll == false then
setPropertyFromGroup('playerStrums', 0, 'y', 720);
        setPropertyFromGroup('playerStrums', 1, 'y', 720);
        setPropertyFromGroup('playerStrums', 2, 'y', 720);
        setPropertyFromGroup('playerStrums', 3, 'y', 720);

setPropertyFromGroup('opponentStrums', 0, 'y', 720);
        setPropertyFromGroup('opponentStrums', 1, 'y', 720);
        setPropertyFromGroup('opponentStrums', 2, 'y', 720);
        setPropertyFromGroup('opponentStrums', 3, 'y', 720);
end
if middlescroll == true then
setPropertyFromGroup('playerStrums', 0, 'y', 720);
        setPropertyFromGroup('playerStrums', 1, 'y', 720);
        setPropertyFromGroup('playerStrums', 2, 'y', 720);
        setPropertyFromGroup('playerStrums', 3, 'y', 720);

setPropertyFromGroup('opponentStrums', 0, 'y', 720);
        setPropertyFromGroup('opponentStrums', 1, 'y', 720);
        setPropertyFromGroup('opponentStrums', 2, 'y', 720);
        setPropertyFromGroup('opponentStrums', 3, 'y', 720);
end
if not middlescroll == true then
setPropertyFromGroup('playerStrums', 0, 'y', 720);
        setPropertyFromGroup('playerStrums', 1, 'y', 720);
        setPropertyFromGroup('playerStrums', 2, 'y', 720);
        setPropertyFromGroup('playerStrums', 3, 'y', 720);

setPropertyFromGroup('opponentStrums', 0, 'y', 720);
        setPropertyFromGroup('opponentStrums', 1, 'y', 720);
        setPropertyFromGroup('opponentStrums', 2, 'y', 720);
        setPropertyFromGroup('opponentStrums', 3, 'y', 720);
end
 end

function onStepHit()
if curStep == 119 and downscroll then
runTimer('upDownScroll1',0.2)
runTimer('upDownScroll2',0.28)
runTimer('upDownScroll3',0.35)
runTimer('upDownScroll4',0.5)
end
if curStep == 119 and not downscroll then
runTimer('upUpScroll1',0.1)
runTimer('upUpScroll2',0.18)
runTimer('upUpScroll3',0.25)
runTimer('upUpScroll4',0.3)
end

function onTimerCompleted(t)
if t == 'upDownScroll1' then
noteTweenY('UpNotePlayer1', 4, '570', 0.2, 'sineOut')
noteTweenAngle('AnglePlayer1', 4, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer1', 0, '570', 0.2, 'sineOut')
noteTweenAngle('SansAnglePlayer1', 0, '360', 0.15, 'sineIn')
end
if t == 'upDownScroll2' then
noteTweenY('UpNotePlayer2', 5, '570', 0.2, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer2', 1, '570', 0.2, 'sineOut')
noteTweenAngle('SansAnglePlayer2', 1, '360', 0.15, 'sineIn')
end
if t == 'upDownScroll3' then
noteTweenY('UpNotePlayer3', 6, '570', 0.2, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer3', 2, '570', 0.2, 'sineOut')
noteTweenAngle('SansAnglePlayer3', 2, '360', 0.15, 'sineIn')
end
if t == 'upDownScroll4' then
noteTweenAngle('AnglePlayer4', 7, '360', 0.15, 'sineIn')
noteTweenY('UpNotePlayer4', 7, '570', 0.2, 'sineOut')
noteTweenY('SansUpNotePlayer4', 3, '570', 0.2, 'sineOut')
noteTweenAngle('SansAnglePlayer4', 3, '360', 0.15, 'sineIn')
end
if t == 'upUpScroll1' then
noteTweenY('UpNotePlayer1', 4, '50', 0.18, 'sineOut')
noteTweenAngle('AnglePlayer1', 4, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer1', 0, '50', 0.18, 'sineOut')
noteTweenAngle('SansAnglePlayer1', 0, '360', 0.15, 'sineIn')
end
if t == 'upUpScroll2' then
noteTweenY('UpNotePlayer2', 5, '50', 0.18, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer2', 1, '50', 0.18, 'sineOut')
noteTweenAngle('SansAnglePlayer2', 1, '360', 0.15, 'sineIn')
end
if t == 'upUpScroll3' then
noteTweenY('UpNotePlayer3', 6, '50', 0.18, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '360', 0.15, 'sineIn')
noteTweenY('SansUpNotePlayer3', 2, '50', 0.18, 'sineOut')
noteTweenAngle('SansAnglePlayer3', 2, '360', 0.15, 'sineIn')
end
if t == 'upUpScroll4' then
noteTweenAngle('AnglePlayer4', 7, '360', 0.15, 'sineIn')
noteTweenY('UpNotePlayer4', 7, '50', 0.18, 'sineOut')
noteTweenY('SansUpNotePlayer4', 3, '50', 0.18, 'sineOut')
noteTweenAngle('SansAnglePlayer4', 3, '360', 0.15, 'sineIn')
end
end
end