function onUpdate()
 if curStep == 1026 then
doTweenZoom('zoom3', 'camGame', 1.2, 7, 'sineInOut')
doTweenX('gameScrollx', 'camGame.scroll', -50, 7, 'sineInOut')
doTweenY('gameScrollY', 'camGame.scroll', 150, 7, 'sineInOut')
end
end
