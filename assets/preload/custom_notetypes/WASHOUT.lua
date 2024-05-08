function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'WASHOUT' then
    if noteData == 0 then
        playAnim("cat","attack",true);
        setProperty('camHUD.angle', -5)
        doTweenAngle('R', 'camHUD', 0, 0.5, 'sineOut') 
        triggerEvent("Add Camera Zoom",'0.045','0.08')
        triggerEvent('Play Animation','damage-left', 'bf')
       end
       if noteData == 1 then
       playAnim("cat","attack",true);
       setProperty('camHUD.angle', 5)
     doTweenAngle('R', 'camHUD', 0, 0.5, 'sineOut') 
        triggerEvent("Add Camera Zoom",'0.045','0.08')
        triggerEvent('Play Animation','damage-down', 'bf')
       end
       if noteData == 2 then
        playAnim("cat","attack",true);
        setProperty('camHUD.angle', -5)
     doTweenAngle('R', 'camHUD', 0, 0.5, 'sineOut') 
        triggerEvent("Add Camera Zoom",'0.045','0.08')
        triggerEvent('Play Animation','damage-up', 'bf')
       end
       if noteData == 3 then
        playAnim("cat","attack",true);
        setProperty('camHUD.angle', 5)
     doTweenAngle('R', 'camHUD', 0, 0.5, 'sineOut') 
        triggerEvent("Add Camera Zoom",'0.045','0.08')
        triggerEvent('Play Animation','damage-right', 'bf')
       end
    end
end