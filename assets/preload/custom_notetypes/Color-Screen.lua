function onCreate()
makeLuaSprite('red', 'red', 0, 0)
addLuaSprite('red', false)
scaleObject('red', 1.5, 1.5)
setObjectCamera('red', 'other')
screenCenter('red','xy')
setProperty('red.alpha', 0)

makeLuaSprite('green', 'green', 0, 0)
addLuaSprite('green', false)
scaleObject('green', 1.5, 1.5)
setObjectCamera('green', 'other')
screenCenter('green','xy')
setProperty('green.alpha', 0)

makeLuaSprite('blue', 'blue', 0, 0)
addLuaSprite('blue', false)
scaleObject('blue', 1.5, 1.5)
setObjectCamera('blue', 'other')
screenCenter('blue','xy')
setProperty('blue.alpha', 0)

makeLuaSprite('purple', 'purple', 0, 0)
addLuaSprite('purple', false)
scaleObject('purple', 1.5, 1.5)
setObjectCamera('purple', 'other')
screenCenter('purple','xy')
setProperty('purple.alpha', 0)
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'Color-Screen' then
    if noteData == 0 then
       doTweenColor('left', 'BG1', 'FF12D5', 0.001, 'linear')
       triggerEvent('Play Animation','singLEFT-alt', 'bf')
        setProperty('purple.alpha', 1)
        doTweenAlpha('purple', 'purple', 0, 0.3, 'sineIn');
       end
       if noteData == 1 then
        doTweenColor('blue', 'BG1', '00FFFF', 0.001, 'linear')
        triggerEvent('Play Animation','singDOWN-alt', 'bf')
        setProperty('blue.alpha', 1)
        doTweenAlpha('blue', 'blue', 0, 0.3, 'sineIn');
       end
       if noteData == 2 then
       doTweenColor('green', 'BG1', '55FF00', 0.001, 'linear')
       triggerEvent('Play Animation','singUP-alt', 'bf')
        setProperty('green.alpha', 1)
        doTweenAlpha('green', 'green', 0, 0.3, 'sineIn');
       end
       if noteData == 3 then
        doTweenColor('right', 'BG1', 'FF0B39', 0.001, 'linear')
        triggerEvent('Play Animation','singRIGHT-alt', 'bf')
        setProperty('red.alpha', 1)
        doTweenAlpha('red', 'red', 0, 0.3, 'sineIn');
       end
    end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Color-Screen' then
    if noteData == 0 then
        doTweenColor('left1', 'BG1', 'FF12D5', 0.001, 'linear')
        setProperty('purple.alpha', 1)
        doTweenAlpha('purple', 'purple', 0, 0.3, 'sineIn');
       end
       if noteData == 1 then
        doTweenColor('blue1', 'BG1', '00FFFF', 0.001, 'linear')
        setProperty('blue.alpha', 1)
        doTweenAlpha('blue', 'blue', 0, 0.3, 'sineIn');
       end
       if noteData == 2 then
       doTweenColor('green1', 'BG1', '55FF00', 0.001, 'linear')
        setProperty('green.alpha', 1)
        doTweenAlpha('green', 'green', 0, 0.3, 'sineIn');
       end
       if noteData == 3 then
        doTweenColor('right1', 'BG1', 'FF0B39', 0.001, 'linear')
        setProperty('red.alpha', 1)
        doTweenAlpha('red', 'red', 0, 0.3, 'sineIn');
       end
    end
end