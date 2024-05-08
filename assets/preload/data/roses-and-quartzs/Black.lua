function onCreate()
makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)
end

function onSongStart()
doTweenAlpha('black', 'funnyBlack', 0, 15, 'sineIn');
doTweenZoom('zoom', 'camGame', 1.05, 15, 'sineInOut')
setProperty('defaultCamZoom', 1.05)
end