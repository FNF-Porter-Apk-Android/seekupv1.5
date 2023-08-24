function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 then
        setProperty('health', health- 0.025);
    end
    triggerEvent('Add Camera Zoom', 0.01, 0.01);
end