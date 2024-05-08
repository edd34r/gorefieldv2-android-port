function onEvent(n, v1, v2)
	if n == '' then
   if v1 == 'bitch' then
setProperty('BG2.visible', false);
end
if v1 == 'car' then
playAnim("CAR","END",true);
setProperty('CAR.visible', true);
    end
  end
end