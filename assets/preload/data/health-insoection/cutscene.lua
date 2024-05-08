function onCreate()
makeAnimatedLuaSprite('cutscene', 'stages/lasagna/cutscenes/ohno', 0, 0)
addLuaSprite('cutscene', false)
addAnimationByPrefix('cutscene', 'ohno', 'i', 10, false)
scaleObject('cutscene', 1, 1)
setProperty('cutscene.alpha', 0)
setObjectCamera('cutscene', 'hud')
screenCenter('cutscene','xy')
end