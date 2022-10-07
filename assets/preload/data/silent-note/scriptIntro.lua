function onCountdownTick(counter)--Nickokom...digo Nickobelit Aquí xd
    if counter == 0 then
        playSound('intro3', 1)
        doTweenAlpha('holanicko', 'Nickomi1', 1, 1, 'linear')
    end
    if counter == 1 then
        playSound('intro2', 1)
        doTweenAlpha('holanicko2', 'Nickomi2', 1, 1, 'linear')
    end
    if counter == 2 then
        doTweenAlpha('holanicko3', 'Nickomi3', 1, 1, 'linear')
        playSound('intro1', 1)
    end
    if counter == 3 then
        playSound('introGo', 1)
        runTimer('terminó', 0.5, 1)
    end
end

function onTimerCompleted(tag)
	if tag == 'terminó' then
        doTweenAlpha('holanicko', 'Nickomi1', 0, 1, 'linear')
        doTweenAlpha('holanicko2', 'Nickomi2', 0, 1, 'linear')
        doTweenAlpha('holanicko3', 'Nickomi3', 0, 1, 'linear')
        runTimer('optimizacionInsana', 1, 1)
    end
if tag == 'optimizacionInsana' then
removeLuaSprite('Nickomi1',true)
removeLuaSprite('Nickomi2',true)
removeLuaSprite('Nickomi3',true)
end
end