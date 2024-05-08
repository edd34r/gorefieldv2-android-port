function onEvent(n, v1)
	if n == 'TwenZoom' then 
    if v1 == '2' then
     setProperty('camHUD.zoom', 0.85)
     setProperty('camHUD.x', 50)
     doTweenX('right', 'camHUD', 0, 0.3, 'sineOut');
     end
     if v1 == '1' then
     setProperty('camHUD.zoom', 0.85)
     setProperty('camHUD.x', -50)
     doTweenX('left', 'camHUD', 0, 0.3, 'sineOut');
     end
   end
end

