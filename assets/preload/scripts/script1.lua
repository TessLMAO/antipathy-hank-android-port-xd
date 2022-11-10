function opponentNoteHit()
    health = getProperty('health')
    if difficulty == 0 then
        if
        getProperty('health') > 0.3 then
        setProperty('health', health- 0.02);
        end

    elseif difficulty == 1 then
        if
        getProperty('health') > 0.3 then
        setProperty('health', health- 0.025);
        end
    elseif difficulty == 2 then
        if
        getProperty('health') > 0.15 then
        setProperty('health', health- 0.025);
        end
    end    
end
