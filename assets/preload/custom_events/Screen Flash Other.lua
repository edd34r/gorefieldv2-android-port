function onEvent(n, v1, v2)
	if n == 'Screen Flash Other' then
        makeLuaSprite("flash", "", -800, -400)
        makeGraphic("flash", 3000, 2000, v2)
        addLuaSprite("flash", true)
	      screenCenter('flash','xy')
        scaleObject('flash', 100, 100) 
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',1)
		doTweenAlpha('flTw','flash',0,v1,'linear')
		setObjectCamera('flash', 'other')
  

 end
end