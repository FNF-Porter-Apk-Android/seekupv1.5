function onStepHit()
    health = getProperty('health')
    if getProperty('health') > 0.55 then
        setProperty('health', health- 0.01);
    end
end