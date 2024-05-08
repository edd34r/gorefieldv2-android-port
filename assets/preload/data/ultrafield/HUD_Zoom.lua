--EVENT FROM OURPLR GUY TEAM

local on = false
function onUpdate(elapsed)
	if on then
   doTweenZoom('noteZoom', 'camHUD', 0.75, 0.3, 'sineOut');
   setProperty('camZoomingMult', 0)
   setProperty('camZoomingDecay', 1)
   end
if off then
    doTweenZoom('noteZoom2', 'camHUD', 1, 0.2, 'sineOut');

    setProperty('camZoomingMult', 0)
    setProperty('camZooming', true)
    setProperty('camZoomingDecay', 0)
		end

end


function onChange()
	if on then on = false else on = true end
end

function lerp(a, b, ratio)
	return a + ratio * (b - a)
end

function onEvent(n, v2)
	if n == 'HUD_Zoom' then onChange() end
end