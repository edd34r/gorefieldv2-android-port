--EVENT FROM OURPLR GUY TEAM

local on = false
function onUpdate(elapsed)
	if on then
   doTweenZoom('noteZoom', 'camHUD', 0.85, 0.3, 'sineOut');
   doTweenZoom('noteZoom2', 'camGame', 0.55, 0.3, 'sineOut');
   setProperty('camZooming', false)
  end
  if off then
    setProperty('camZooming', true)
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