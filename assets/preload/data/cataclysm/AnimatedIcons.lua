--Estoy cansado jefe quiero dormir 

function onCreatePost()
	makeAnimatedLuaSprite('icons1', 'icon-Animated/NERMAL_GODFIELD', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons1', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons1', 'losing', 'losing', 24, true); 

	setObjectCamera('icons1', 'hud')
	addLuaSprite('icons1', true);
	setProperty('icons1.flipX', true) --mirror sprite horizontally

makeAnimatedLuaSprite('icons3', 'icon-Animated/godfield_jon', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons3', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons3', 'losing', 'losing', 24, true); 

	setObjectCamera('icons3', 'hud')
	addLuaSprite('icons3', true);
	setProperty('icons3.flipX', true)

makeAnimatedLuaSprite('icons5', 'icon-Animated/LB_JON_GODFIELD', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons5', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons5', 'losing', 'losing', 24, true); 

	setObjectCamera('icons5', 'hud')
	addLuaSprite('icons5', true);
	setProperty('icons5.flipX', true)

makeAnimatedLuaSprite('icons7', 'icon-Animated/BF_sansfield_ingame', getProperty('iconP1.x'), getProperty('iconP1.y'))

	luaSpriteAddAnimationByPrefix('icons7', 'idle', 'idle', 24, true);  -- change here
luaSpriteAddAnimationByPrefix('icons7', 'losing', 'losing', 24, true); 

	setObjectCamera('icons7', 'hud')
	addLuaSprite('icons7', true);
	setProperty('icons7.flipX', true)

	setProperty('icons7.visible', false) 
  setProperty('icons5.visible', false)
  setProperty('icons3.visible', false)
  setProperty('icons1.visible', true)

  
	setProperty('iconP1.visible', false)
--------------------------------------------------------------------------------------------------------------------------------
	makeAnimatedLuaSprite('icons2', 'icon-Animated/1_FORM_GODFIELD', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons2', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons2', 'losing', 'losing', 24, true);
setProperty('icons2.visible', true)
	setObjectCamera('icons2', 'hud')
	addLuaSprite('icons2', true)
	setProperty('icons2.flipX', false) --mirror sprite horizontally

	setProperty('iconP2.visible', false)

makeAnimatedLuaSprite('icons12', 'icon-Animated/GODFIELD_TRUE_FORM', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons12', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons12', 'losing', 'losing', 24, true);
setProperty('icons12.visible', false)
	setObjectCamera('icons12', 'hud')
	addLuaSprite('icons12', true)
	setProperty('icons12.flipX', false)

makeAnimatedLuaSprite('icons33', 'icon-Animated/godfield_gore', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons33', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons33', 'losing', 'losing', 24, true);
  setProperty('icons33.visible', false)
	setObjectCamera('icons33', 'hud')
	addLuaSprite('icons33', true)
	setProperty('icons33.flipX', false)

makeAnimatedLuaSprite('icons4', 'icon-Animated/LB_GOREFIELD_GOD', getProperty('iconP2.x'), getProperty('iconP2.y'))

	luaSpriteAddAnimationByPrefix('icons4', 'idle', 'idle', 24, true); -- change here
luaSpriteAddAnimationByPrefix('icons4', 'losing', 'losing', 24, true);
setProperty('icons4.visible', false)
	setObjectCamera('icons4', 'hud')
	addLuaSprite('icons4', true)
	setProperty('icons4.flipX', false)
end

function onUpdate()
	setProperty('icons1.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons1.angle', getProperty('iconP1.angle'))
	setProperty('icons1.y', getProperty('iconP1.y') + 20) -- and here
  setProperty('icons3.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons3.angle', getProperty('iconP1.angle'))
	setProperty('icons3.y', getProperty('iconP1.y') + 20)
  setProperty('icons5.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons5.angle', getProperty('iconP1.angle'))
	setProperty('icons5.y', getProperty('iconP1.y') + 20)
  setProperty('icons7.x', getProperty('iconP1.x') + 10) -- change here
	setProperty('icons7.angle', getProperty('iconP1.angle'))
	setProperty('icons7.y', getProperty('iconP1.y') + 20)
---------------------------------------------------------------------------------------------------------------------------------
	setProperty('icons2.x', getProperty('iconP2.x') + -10) -- change here
	setProperty('icons2.angle', getProperty('iconP2.angle'))
	setProperty('icons2.y', getProperty('iconP2.y') + 20) -- and here
  setProperty('icons12.x', getProperty('iconP2.x') + -55) -- change here
	setProperty('icons12.angle', getProperty('iconP2.angle'))
	setProperty('icons12.y', getProperty('iconP2.y') + -20)
  setProperty('icons33.x', getProperty('iconP2.x') + -10) -- change here
	setProperty('icons33.angle', getProperty('iconP2.angle'))
	setProperty('icons33.y', getProperty('iconP2.y') + 20)
  setProperty('icons4.x', getProperty('iconP2.x') + -10) -- change here
	setProperty('icons4.angle', getProperty('iconP2.angle'))
	setProperty('icons4.y', getProperty('iconP2.y') + 20)

    if getHealth() <= 0.35 then
        objectPlayAnimation('icons2', 'idle');
        objectPlayAnimation('icons12', 'idle');
        objectPlayAnimation('icons33', 'idle');
        objectPlayAnimation('icons4', 'idle');
        objectPlayAnimation('icons1', 'losing');
        objectPlayAnimation('icons3', 'losing');
        objectPlayAnimation('icons5', 'losing');
        objectPlayAnimation('icons7', 'losing');
    elseif getHealth() >= 1.45 then
        objectPlayAnimation('icons2', 'losing');
        objectPlayAnimation('icons12', 'losing');
        objectPlayAnimation('icons33', 'losing');
        objectPlayAnimation('icons4', 'losing');
        objectPlayAnimation('icons1', 'idle');
        objectPlayAnimation('icons3', 'idle');
        objectPlayAnimation('icons5', 'idle');
        objectPlayAnimation('icons7', 'idle');
    elseif getHealth() >= 0.95 then
        objectPlayAnimation('icons2', 'idle');
        objectPlayAnimation('icons12', 'idle');
        objectPlayAnimation('icons33', 'idle');
        objectPlayAnimation('icons4', 'idle');
        objectPlayAnimation('icons1', 'idle');
        objectPlayAnimation('icons3', 'idle');
        objectPlayAnimation('icons5', 'idle');
        objectPlayAnimation('icons7', 'idle');
    elseif getHealth() >= 0.45 then
        objectPlayAnimation('icons1', 'idle');
        objectPlayAnimation('icons3', 'idle');
        objectPlayAnimation('icons5', 'idle');
        objectPlayAnimation('icons7', 'idle');
    end

end


