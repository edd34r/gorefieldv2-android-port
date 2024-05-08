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
     doTweenAngle('R', 'camHUD', 0, 0.3, 'sineOut') 
     setProperty('camGame.angle', 5)
     doTweenAngle('R2', 'camGame', 0, 0.3, 'sineOut') 
     else
        triggerEvent("Add Camera Zoom",0.035,0.04)
     setProperty('camHUD.angle', -5)
     doTweenAngle('R3', 'camHUD', 0, 0.25, 'sineOut') 
     setProperty('camGame.angle', -5)
     doTweenAngle('R4', 'camGame', 0, 0.25, 'sineOut') 
    end

end


			