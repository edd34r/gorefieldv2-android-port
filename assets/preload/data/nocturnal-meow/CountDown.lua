function onCountdownTick(counter)    if counter == 0 then -- three

        playSound('cy/sounds_cryfield_3',0.3);

    elseif counter == 1 then -- two

        playSound('cry/sounds_cryfield_2',0.3);

    elseif counter == 2 then -- one

        playSound('cry/sounds_cryfield_1',0.3);

    elseif counter == 3 then -- go

        playSound('cry/sounds_cryfield_Continue',0.3);

    end

end
