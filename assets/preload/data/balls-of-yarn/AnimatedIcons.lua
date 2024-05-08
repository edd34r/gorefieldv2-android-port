
function onCreatePost()
	makeAnimatedLuaSprite('icons1', 'icon-Animated/John_icons', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons1', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons1', 'losing', 'losing', 24, true); 

	setObjectCamera('icons1', 'hud')
	addLuaSprite('icons1', true);
	setProperty('icons1.flipX', true) --mirror sprite horizontally
	setProperty('icons1.visible', true)
  

  makeAnimatedLuaSprite('icons4', 'icon-Animated/Luna_icons', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons4', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons4', 'losing', 'losing', 24, true); 

	setObjectCamera('icons4', 'hud')
	addLuaSprite('icons4', true);
	setProperty('icons4.flipX', true) --mirror sprite horizontally
	setProperty('icons4.visible', false)
  
	setProperty('iconP1.visible', false)
--------------------------------------------------------------------------------------------------------------------------------
	makeAnimatedLuaSprite('icons2', 'icon-Animated/CARTOON_GOREFIELD', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons2', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons2', 'losing', 'losing', 24, true);
setProperty('icons2.visible', true)
setProperty('icons2.alpha', 0)
	setObjectCamera('icons2', 'hud')
	addLuaSprite('icons2', true)
	setProperty('icons2.flipX', false) --mirror sprite horizontally

  makeAnimatedLuaSprite('icons3', 'icon-Animated/CC_Icons', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons3', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons3', 'losing', 'losing', 24, true);


setProperty('icons3.visible', false)
	setObjectCamera('icons3', 'hud')
	addLuaSprite('icons3', true)
	setProperty('icons3.flipX', false)

  setProperty('iconP2.visible', false)
end

function onUpdate()
	setProperty('icons1.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons1.angle', getProperty('iconP1.angle'))
	setProperty('icons1.y', getProperty('iconP1.y') + 20) -- and here
  
  setProperty('icons4.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons4.angle', getProperty('iconP1.angle'))
	setProperty('icons4.y', getProperty('iconP1.y') + 20)
---------------------------------------------------------------------------------------------------------------------------------
	setProperty('icons2.x', getProperty('iconP2.x') + -5) -- change here
	setProperty('icons2.angle', getProperty('iconP2.angle'))
	setProperty('icons2.y', getProperty('iconP2.y') + 20) -- and here

  setProperty('icons3.x', getProperty('iconP2.x') + -35) -- change here
	setProperty('icons3.angle', getProperty('iconP2.angle'))
	setProperty('icons3.y', getProperty('iconP2.y') + 20)

    if getHealth() <= 0.35 then
        objectPlayAnimation('icons2', 'idle');
        objectPlayAnimation('icons3', 'idle');
        objectPlayAnimation('icons1', 'losing');
        objectPlayAnimation('icons4', 'losing');
    elseif getHealth() >= 1.45 then
        objectPlayAnimation('icons1', 'idle');
        objectPlayAnimation('icons4', 'idle');
		    objectPlayAnimation('icons2', 'losing');
        objectPlayAnimation('icons3', 'losing');
    elseif getHealth() >= 0.95 then
        objectPlayAnimation('icons1', 'idle');
        objectPlayAnimation('icons4', 'idle');
		objectPlayAnimation('icons2', 'idle');
    objectPlayAnimation('icons3', 'idle');
    elseif getHealth() >= 0.45 then
        objectPlayAnimation('icons1', 'idle');
    end

end

