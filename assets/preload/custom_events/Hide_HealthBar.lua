function onEvent(name,value1,value2)
	if name == 'Hide_HealthBar' then 

  if value1 == '0' then
     setProperty('health.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('healthBarBG.alpha', 0)
setProperty('icons1.visible', false);
setProperty('icons2.visible', false);
setProperty('scoreTxt.alpha', 0)
setProperty('PS.alpha', 0)
setProperty('health_filler.alpha', 0)
		end

		if value1 == '1' then
			doTweenAlpha('fade1', 'healthBarBG', 1, 0.1, 'sineOut');
     doTweenAlpha('fade2', 'healthBar', 1, 0.1, 'sineOut');
     setProperty('icons1.visible', true);
setProperty('icons2.visible', true);
     doTweenAlpha('fade4', 'health', 1, 0.1, 'sineOut');
     doTweenAlpha('fade5', 'scoreTxt', 1, 0.1, 'sineOut');
     setProperty('PS.alpha', 1)
     setProperty('health_filler.alpha', 1)
      end
		end
	end
			