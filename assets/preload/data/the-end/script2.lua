function onCreate()
    setProperty('scoreTxt.alpha', .5);
end

function onStepHit()
    if curBeat % math.random(0.2,8) == 0 then
    setTextFont('scoreTxt', 'pixelated-wingdings.ttf');
    else
    setTextFont('scoreTxt', 'vcr.ttf');
    end

    if curBeat < 495 then
        if curStep % math.random(2,5) == 0 then
        setTextFont('Lyrics', 'vcr.ttf');
        else
        setTextFont('Lyrics', 'pixelated-wingdings.ttf');
        end
    else
        setTextFont('Lyrics', 'pixelated-wingdings.ttf');
    end
end

function onUpdate()
    setProperty('Lyrics.y', math.random('Lyrics.y' + 2, 'Lyrics.y' - 2));
end