function onEvent(name, value1, value2)
if name == "TwenZoom" then    
   setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.05) 
   setProperty('camGame.zoom', getProperty('camGame.zoom') + 0.06) 
   end

end