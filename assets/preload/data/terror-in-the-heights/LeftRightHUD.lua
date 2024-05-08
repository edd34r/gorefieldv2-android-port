function onCreatePost() 
runTimer('leftHUD',0.1)

function onTimerCompleted(t,l,ll)
if t == 'leftHUD' then
doTweenX('let', 'camHUD', -10, 2.5, 'sineInOut')
runTimer('rightHUD',2.5)
end
if t == 'rightHUD' then
doTweenX('righ', 'camHUD', 10, 2.5, 'sineInOut')
runTimer('leftHUD',2.5)
end
end
end