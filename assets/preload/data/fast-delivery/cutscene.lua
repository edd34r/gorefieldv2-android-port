function onCreate()
makeAnimatedLuaSprite('cutscene', 'stages/lasagna/cutscenes/something', 0, 0)
addLuaSprite('cutscene', false)
addAnimationByPrefix('cutscene', 'something', 'i', 13, false)
scaleObject('cutscene', 1, 1)
setProperty('cutscene.alpha', 0)
setObjectCamera('cutscene', 'other')
screenCenter('cutscene','xy')
end