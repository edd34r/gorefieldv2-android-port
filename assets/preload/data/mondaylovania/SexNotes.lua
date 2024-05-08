function onStepHit()
if curStep == 1185 and not middlescroll then
noteTweenX('bfTween1', 4, 90, 1, 'circInOut');
noteTweenX('bfTween2', 5, 205, 1.1, 'circInOut');
noteTweenX('bfTween3', 6, 315, 1.18, 'circInOut');
noteTweenX('bfTween4', 7, 425, 1.2, 'circInOut');
end
if curStep == 1306 and not middlescroll then
noteTweenX('ByebfTween1', 4, -850, 1.6, 'expoInOut');
noteTweenX('ByebfTween2', 5, -850, 1.65, 'expoInOut');
noteTweenX('ByebfTween3', 6, -815, 1.7, 'expoInOut');
noteTweenX('ByebfTween4', 7, -825, 1.75, 'expoInOut');
end
if curStep == 1185 and middlescroll then
noteTweenX('bfTween1', 4, 90, 1, 'circInOut');
noteTweenX('bfTween2', 5, 205, 1.1, 'circInOut');
noteTweenX('bfTween3', 6, 980, 1.18, 'circInOut');
noteTweenX('bfTween4', 7, 1100, 1.2, 'circInOut');
end
if curStep == 1306 and middlescroll then
noteTweenX('ByebfTween1', 4, -850, 1.6, 'expoInOut');
noteTweenX('ByebfTween2', 5, -850, 1.65, 'expoInOut');
noteTweenX('ByebfTween3', 6, 1350, 1.7, 'expoInOut');
noteTweenX('ByebfTween4', 7, 1350, 1.75, 'expoInOut');
end
end