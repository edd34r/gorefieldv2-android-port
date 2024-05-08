
function onCreatePost()
setProperty('iconP1.alpha', 0)

makeAnimatedLuaSprite('icons1', 'icon-Animated/BF_sansfield_ingame', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons1', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons1', 'losing', 'losing', 24, true); 

	setObjectCamera('icons1', 'hud')
	addLuaSprite('icons1', true);
	setProperty('icons1.flipX', true) --mirror sprite horizontally
end
--------------------------------------------------------------------------------------------------------------------------------


function onUpdate()
	setProperty('icons1.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons1.angle', getProperty('iconP1.angle'))
	setProperty('icons1.y', getProperty('iconP1.y') + 20) -- and here
---------------------------------------------------------------------------------------------------------------------------------


    if getHealth() <= 0.35 then

        objectPlayAnimation('icons1', 'losing');
    elseif getHealth() >= 1.45 then
        objectPlayAnimation('icons1', 'idle');
    elseif getHealth() >= 0.95 then
        objectPlayAnimation('icons1', 'idle');
    elseif getHealth() >= 0.45 then
        objectPlayAnimation('icons1', 'idle');

    end

end


