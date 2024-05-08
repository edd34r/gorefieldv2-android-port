function onCreate()
makeAnimatedLuaSprite('PS', 'mechanics/ps', 1080, 80)
addLuaSprite('PS', true)
addAnimationByPrefix('PS', '3', 'LIVE 3 loose', 24, false)
addAnimationByPrefix('PS', '2', 'LIVE 2 LOSE', 24, false)
addAnimationByPrefix('PS', '1', 'LIVE 1 LOSE', 24, false)
addAnimationByPrefix('PS', '4', 'LIVE 4 MAIN', 24, false)
scaleObject('PS', 0.6, 0.6)
setObjectCamera('PS', 'hud')

makeAnimatedLuaSprite('PS-gray', 'mechanics/ps-gray', 1080, 80)
addLuaSprite('PS-gray', true)
addAnimationByPrefix('PS-gray', '3', 'LIVE 3 loose', 24, false)
addAnimationByPrefix('PS-gray', '2', 'LIVE 2 LOSE', 24, false)
addAnimationByPrefix('PS-gray', '1', 'LIVE 1 LOSE', 24, false)
addAnimationByPrefix('PS-gray', '4', 'LIVE 4 MAIN', 24, false)
scaleObject('PS-gray', 0.6, 0.6)
setObjectCamera('PS-gray', 'hud')
setProperty('PS-gray.visible', false)
end

function onUpdate()
if not downscroll then
setProperty('PS.y', 620) 
setProperty('PS-gray.y', 620)   
end
end