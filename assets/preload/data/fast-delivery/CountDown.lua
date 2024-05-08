function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('intro3-pixel',0.3);

    elseif counter == 1 then -- two

        playSound('intro2-pixel',0.3);

    elseif counter == 2 then -- one

        playSound('intro1-pixel',0.3);

    elseif counter == 3 then -- go

        playSound('introGo-pixel',0.3);

    end

end
