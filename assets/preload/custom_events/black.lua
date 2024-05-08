function onCreate()
makeLuaSprite("Black", "", 0, 0)
makeGraphic("Black", 1280, 720, "0xFF000000")
setObjectCamera("Black", 'other')
addLuaSprite("Black", false)
setProperty('Black.alpha',0)
end

function onEvent(n,v1,v2)
	if n == 'black' then 

     doTweenAlpha('fadeBlack', 'Black', v1, v2, 'sineOut');


      end

	end
			