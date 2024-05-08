function onCreate()

	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'none')
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'none')
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'none')
end

function onGameOverStart()
         playSound("none", 1)
         startVideo('takemejon')
         setProperty("boyfriend.visible", false)
         runTimer('restar',28)
end

function onTimerCompleted(t,l,ll)
if t == 'restar' then
	restartSong();
	return Function_Stop
end
end