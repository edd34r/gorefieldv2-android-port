local ULTRAcamera = true;
function onCreate()
makeLuaSprite('BG', 'stages/ultra/BG', 120, -20)
addLuaSprite('BG', false)
scaleObject('BG', 1.3, 1.3)
end

function onCreatePost() 
    noteTweenX('oppo0', 0, -1000, 0.001, 'quartInOut')
    noteTweenX('oppo1', 1, -1000, 0.001, 'quartInOut')
    noteTweenX('oppo2', 2, -1000, 0.001, 'quartInOut')
    noteTweenX('oppo3', 3, -1000, 0.001, 'quartInOut')
    noteTweenX('play0', 4, 415, 0.001, 'quartInOut')
    noteTweenX('play1', 5, 525, 0.001, 'quartInOut')
    noteTweenX('play2', 6, 635, 0.001, 'quartInOut')
    noteTweenX('play3', 7, 745, 0.001, 'quartInOut')

end

function opponentNoteHit(id, direction, noteType, isSustainNote)  

    cameraShake('game', 0.001, 0.1)

end