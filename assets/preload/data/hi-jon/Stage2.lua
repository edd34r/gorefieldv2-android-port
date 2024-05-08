function onCreate()
makeLuaSprite('bg', 'stages/GoreStage/bg_gorefield_1', -140, -240)
addLuaSprite('bg', false)
scaleObject('bg', 1, 1)

makeLuaSprite("funnyBlack2", "", -500, 0)
makeGraphic("funnyBlack2", 1280, 720, "0xFF000000")
addLuaSprite("funnyBlack2", false)
scaleObject('funnyBlack2', 10, 10)

makeLuaSprite("funnyBlack", "", 0, 0)
makeGraphic("funnyBlack", 1280, 720, "0xFF000000")
setObjectCamera("funnyBlack", 'other')
addLuaSprite("funnyBlack", false)
end