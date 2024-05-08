function onCreatePost()
setObjectOrder('flash', getObjectOrder('flash') + 1);
setObjectOrder('UpperBar', getObjectOrder('UpperBar') + 2);
setObjectOrder('LowerBar', getObjectOrder('LowerBar') + 3);
end

function onEvent(n, v1, v2)
	if n == 'Screen Flash' then
        makeLuaSprite("flash", "", -800, -400)
        makeGraphic("flash", 3000, 2000, v2)
        addLuaSprite("flash", false)
	      screenCenter('flash','xy')
        scaleObject('flash', 100, 100) 
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
		setObjectCamera('flash', 'hud')
  

 end
end