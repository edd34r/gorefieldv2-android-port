function opponentNoteHit(id, noteData, noteType, isSustainNote)
      if noteType == 'angel' then
    if noteData == 0 then
        playAnim("angel1","left",true);
        playAnim("angel2","left",true);
        playAnim("angel3","left",true);
        playAnim("angel4","left",true);
        setProperty('boyfriend.x', 770);
        setProperty('boyfriend.y', 460);
        runTimer('idle',0.5)
       end
       if noteData == 1 then
       playAnim("angel1","dowm",true);
        playAnim("angel2","down",true);
        playAnim("angel3","down",true);
        playAnim("angel4","down",true);
            setProperty('boyfriend.x', 770);
        setProperty('boyfriend.y', 460);
        runTimer('idle',0.5)
       end
       if noteData == 2 then
        playAnim("angel1","up",true);
        playAnim("angel2","up",true);
        playAnim("angel3","up",true);
        playAnim("angel4","up",true);
           setProperty('boyfriend.x', 770);
        setProperty('boyfriend.y', 460);
        runTimer('idle',0.5)
       end
       if noteData == 3 then
        playAnim("angel1","right",true);
        playAnim("angel2","right",true);
        playAnim("angel3","right",true);
        playAnim("angel4","right",true);
        setProperty('boyfriend.x', 770);
        setProperty('boyfriend.y', 460);
        runTimer('idle',0.5)
       end
    end
end