function onCreate()
makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'hud')
addLuaSprite("funnyBlack", true)
end

function onSongStart()
doTweenAlpha('black', 'funnyBlack', 0, 20, 'sineIn');
doTweenZoom('zoom', 'camGame', 1.05, 20, 'sineInOut')
setProperty('defaultCamZoom', 1.05)
end