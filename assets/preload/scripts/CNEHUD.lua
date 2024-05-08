--Credits to... eh... idk 

--[[
Kinda revamped by me(Aldo Idk),maxwell(main idea and kinda give me the idea of the code)[i just revamped his code too hard from him] and thx by the markups to ghostdev
--]]
scoreRating = {'S++','S+', 'S', 'A', 'B', 'C', 'D', 'E', 'F'}
scoreAccuracy = {100, 95, 90, 85, 80, 75, 70, 65, 10}
ratingFinal = '[N/A]'

function onCreatePost()
    addHaxeLibrary("FlxTextFormat", "flixel.text")
    addHaxeLibrary("FlxTextFormatMarkerPair", 'flixel.text')
    setProperty('scoreTxt.y',getProperty('scoreTxt.y') + (downscroll and - 90 or 0))
    applyMarkups('scoreTxt', 'Accuracy:$-$% - #'..ratingFinal .. '#     Misses: ' .. misses .. '          Score: ' .. score,{'FFFFFF','FFFFFF'}, {'$', '#'})	 
end

function onUpdateScore(m)
	reloadRating(round((getProperty('ratingPercent') * 100), 2))
	applyMarkups('scoreTxt', 'Accuracy:$'..round((getProperty('ratingPercent') * 100), 2)..'$% - #'..ratingFinal .. '#     Misses: ' .. misses .. '          Score: ' .. score,{'FFFFFF','FFFFFF'}, {'$', '#'})
end

function reloadRating(percent)
    for i,_ in ipairs(scoreRating) do
        if scoreAccuracy[i] <= percent then
            ratingFinal = scoreRating[i]
            break
        end
    end
end

function applyMarkups(tag, text, colors, seperators)

    if #colors ~= #seperators then
         return
    end

    markups = ""
    for i, color in ipairs(colors) do
        markups = markups .. "new FlxTextFormatMarkerPair(new FlxTextFormat(".. (stringStartsWith(color, "0xFF") and color or "0xFF"..color) .."), '".. seperators[i] .."')" .. (i == #colors and "" or ",")
    end

    obj = luaTextExists(tag) and "game.getLuaObject('".. tag .."')" or runHaxeCode('return game.variables.exists("'.. tag .. '");') and "getVar('".. tag .."')" or "game.".. tag

    runHaxeCode([[
        ]].. obj ..[[.applyMarkup("]].. text ..[[", 
            []].. markups ..[[]
        );
    ]])
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
