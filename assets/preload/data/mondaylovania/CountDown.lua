function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('undertale/3',0.3);

    elseif counter == 1 then -- two

        playSound('undertale/2',0.3);

    elseif counter == 2 then -- one

        playSound('undertale/1',0.3);

    elseif counter == 3 then -- go

        playSound('undertale/blast',0.3);

    end

end
