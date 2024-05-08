function onTimerCompleted(t,l,ll)
if t == 'idle' then
setProperty('boyfriend.x', 770);
setProperty('boyfriend.y', 460);
triggerEvent('Play Animation','idle', 'dad')
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if getProperty('dad.curCharacter') == 'godfield-3' then
    if noteData == 0 then
        setProperty('boyfriend.x', 765);
        setProperty('boyfriend.y', 450);
        runTimer('idle',0.5538)
       end
       if noteData == 1 then
       setProperty('boyfriend.x', 760);
        setProperty('boyfriend.y', 470);
        runTimer('idle',0.5538)
       end
       if noteData == 2 then
        setProperty('boyfriend.x', 775);
        setProperty('boyfriend.y', 440);
        runTimer('idle',0.5538)
       end
       if noteData == 3 then
        setProperty('boyfriend.x', 760);
        setProperty('boyfriend.y', 460);
        runTimer('idle',0.5538)
       end
   end
end