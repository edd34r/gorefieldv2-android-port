local ULTRAcamera = true;
function onUpdate()
    if ULTRAcamera == true then
        if mustHitSection then
            setProperty('defaultCamZoom', 1.25)
        else
            setProperty('defaultCamZoom', 1.05)
        end
    end
end