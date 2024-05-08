function onEvent(n, v1)
	if n == 'NoteUpDown' then 
     if v1 == '1' then
      onNotesUp()
     end
   if v1 == '2' then
      onNotesUpp()
end
end
end

function onNotesUp()
if downscroll then
noteTweenAngle('AnglePlayer1', 4, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer4', 7, '10', 0.001, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '540', 0.001, 'sineOut')
runTimer('down',0.1)
end
end
if not downscroll then
noteTweenAngle('AnglePlayer1', 4, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer4', 7, '10', 0.001, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '70', 0.001, 'sineOut')
runTimer('down2',0.1)
end
end
end

function onNotesUpp()
if downscroll then
noteTweenAngle('AnglePlayer1', 4, '-10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '-10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '-10', 0.001, 'sineOut')
noteTweenAngle('AnglePlayer4', 7, '-10', 0.001, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '540', 0.001, 'sineOut')
runTimer('down',0.1)
end
end
if not downscroll then
noteTweenAngle('AnglePlayer1', 4, '-10', 0.0001, 'sineOut')
noteTweenAngle('AnglePlayer2', 5, '-10', 0.0001, 'sineOut')
noteTweenAngle('AnglePlayer3', 6, '-10', 0.0001, 'sineOut')
noteTweenAngle('AnglePlayer4', 7, '-10', 0.0001, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '70', 0.001, 'sineOut')
runTimer('down2',0.1)
end
end
end

function onTimerCompleted(t,l,ll)
if t == 'down' then
noteTweenAngle('AnglePlayer5', 4, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer6', 5, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer7', 6, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer8', 7, '0', 0.1, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '565', 0.3, 'sineOut')
end
end
if t == 'down2' then
noteTweenAngle('AnglePlayer5', 4, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer6', 5, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer7', 6, '0', 0.1, 'sineOut')
noteTweenAngle('AnglePlayer8', 7, '0', 0.1, 'sineOut')
for i = 0,7 do
noteTweenY(i, i, '55', 0.3, 'sineOut')
end
end
end