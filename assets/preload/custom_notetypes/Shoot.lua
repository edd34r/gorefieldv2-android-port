function onCreate()
makeLuaSprite('redr', 'stages/punishment/red_vignette', 0, 0)
addLuaSprite('redr', true)
scaleObject('redr', 1.2, 1.2)
setObjectCamera('redr', 'hud')
setProperty('redr.alpha', 0)
screenCenter('redr','xy')
end

--Note in 6.3
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == Shoot then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'mechanics/Shoot Note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '2'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
 if noteType == 'Shoot' then
setProperty('redr.alpha', 1)
triggerEvent("Add Camera Zoom",0.065,0.10)
triggerEvent('Play Animation','shoot', 'bf')
triggerEvent('Play Animation','damage', 'dad')
doTweenAlpha('byered', 'redr', 0, 0.5, 'sineIn');
 end
end