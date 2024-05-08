function onEvent(n, v1)
	if n == 'RH' then 
     rotatefuck(false)
     end
     if v1 == '1' then
     rotatefuck(true)
   end
end

function rotatefuck(rotate)
    if rotate then
        triggerEvent("Add Camera Zoom",0.035,0.04)
     setProperty('camHUD.angle', 5)
     doTweenAngle('R', 'camHUD', 0, 0.2, 'sineOut') 
     else
        triggerEvent("Add Camera Zoom",0.035,0.04)
     setProperty('camHUD.angle', -5)
     doTweenAngle('R2', 'camHUD', 0, 0.2, 'sineOut') 
    end

end


			