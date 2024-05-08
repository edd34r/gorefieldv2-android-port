function onStartCountdown()
    if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
        startVideo('bigotes');
        allowCountdown = true;
        return Function_Stop;
    end
    return Function_Continue;
end
