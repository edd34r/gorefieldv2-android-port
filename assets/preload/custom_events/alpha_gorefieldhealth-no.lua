function onEvent(n,v1,v2)
	if n == 'alpha_gorefieldhealth-no' then 

     doTweenAlpha('fade', 'healthBarBG', v1, v2, 'sineOut');
     doTweenAlpha('fade1', 'healthBar', v1, v2, 'sineOut');
     doTweenAlpha('fade7', 'icons1', v1, v2, 'sineOut');
     doTweenAlpha('fade8', 'icons2', v1, v2, 'sineOut');

     doTweenAlpha('fade5', 'scoreTxt', v1, v2, 'sineOut');


      end

	end
			