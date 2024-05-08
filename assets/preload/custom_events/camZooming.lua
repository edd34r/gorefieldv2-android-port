--EVENT FROM OURPLR GUY TEAM

local on = false
function onUpdate(elapsed)
	if on then
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
	if n == 'camZooming' then onChange() end
end