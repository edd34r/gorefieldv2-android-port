--Note Confing
PSmiss = 0


function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'punch' then
	
		PSmiss = PSmiss+1

		if PSmiss == 1 then
	
objectPlayAnimation('PS', '3', true)
cameraShake('game', '0.01', '0.1')
cameraShake('hud', '0.01', '0.1')
playSound('mechanics/punch', '1')

		end
		
		if PSmiss == 2 then

			objectPlayAnimation('PS', '2', true)
cameraShake('game', '0.01', '0.1')
cameraShake('hud', '0.01', '0.1')
playSound('mechanics/punch', '1')
		end
		
		if PSmiss == 3 then

			objectPlayAnimation('PS', '1', true)
cameraShake('game', '0.01', '0.1')
cameraShake('hud', '0.01', '0.1')
playSound('mechanics/punch', '1')

		end

		if PSmiss >=4 then

        setProperty('health', -500);
        cameraShake('game', '0.01', '0.1')
cameraShake('hud', '0.01', '0.1')
playSound('mechanics/punch', '1')

		end
	end
end