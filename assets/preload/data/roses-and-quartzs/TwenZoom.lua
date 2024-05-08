function onEvent(name, value1, value2)
if name == "TwenZoom" then    
   setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.03) 
   setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.04) 
   end

end