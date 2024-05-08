function onCreate()
makeLuaSprite('red', 'red', 0, 0)
addLuaSprite('red', false)
scaleObject('red', 1.5, 1.5)
setObjectCamera('red', 'other')
setScrollFactor('red',0,0)
screenCenter('red','xy')
setProperty('red.alpha', 0)

makeLuaSprite('green', 'green', 0, 0)
addLuaSprite('green', false)
scaleObject('green', 1.5, 1.5)
setObjectCamera('green', 'other')
screenCenter('green','xy')
setScrollFactor('green',0,0)
setProperty('green.alpha', 0)

makeLuaSprite('blue', 'blue', 0, 0)
addLuaSprite('blue', false)
setScrollFactor('blue',0,0)
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
setScrollFactor('purple',0,0)
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if not isSustainNote then
    if noteData == 0 then
        setProperty('purple.alpha', 0.2)
        doTweenAlpha('purple', 'purple', 0, 0.3, 'sineOut');
       end
       if noteData == 1 then
        setProperty('blue.alpha', 0.2)
        doTweenAlpha('blue', 'blue', 0, 0.3, 'sineOut');
       end
       if noteData == 2 then
        setProperty('green.alpha', 0.2)
        doTweenAlpha('green', 'green', 0, 0.3, 'sineOut');
       end
       if noteData == 3 then
        setProperty('red.alpha', 0.2)
        doTweenAlpha('red', 'red', 0, 0.3, 'sineOut');
       end
    end
end
