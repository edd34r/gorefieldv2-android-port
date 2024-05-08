function onUpdate()
 if curStep == 767 and not middlescroll then
noteTweenX('bfTween1', 4, 90, 0.01, 'linear');
noteTweenX('bfTween2', 5, 205, 0.01, 'linear');
noteTweenX('bfTween3', 6, 315, 0.01, 'linear');
noteTweenX('bfTween4', 7, 425, 0.01, 'linear');
noteTweenX('dadTween1', 0, 100000, 0.01, 'linear');
noteTweenX('dadTween2', 1, 100000, 0.01, 'linear');
noteTweenX('dadTween3', 2, 100000, 0.01, 'linear');
noteTweenX('dadTween4', 3, 100000, 0.01, 'linear');
end
if curStep == 767 and middlescroll then
noteTweenX('dadTween1', 0, 100000, 0.01, 'linear');
noteTweenX('dadTween2', 1, 100000, 0.01, 'linear');
noteTweenX('dadTween3', 2, 100000, 0.01, 'linear');
noteTweenX('dadTween4', 3, 100000, 0.01, 'linear');
end
end
