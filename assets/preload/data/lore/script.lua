function onCreate()
    precacheImage('boom');

    makeAnimatedLuaSprite('deltacast1', 'deltacast1', -450, 0);
	addAnimationByPrefix('deltacast1', 'idle', 'deltacast1 idle', 10, true);
	setScrollFactor('deltacast1', 0.7, 0.7);
    scaleObject('deltacast1', 0.7, 0.7);
	addLuaSprite('deltacast1', false);

    makeAnimatedLuaSprite('deltacast2', 'deltacast2', 50, 0);
	addAnimationByPrefix('deltacast2', 'idle', 'deltacast2 idle', 10, true);
	setScrollFactor('deltacast2', 0.7, 0.7);
    scaleObject('deltacast2', -0.6, 0.6);
	addLuaSprite('deltacast2', false);
end

function onBeatHit()

    if curBeat % 2 == 0 then
		objectPlayAnimation('deltacast1', 'idle', 12);
		objectPlayAnimation('deltacast2', 'idle', 12);
	end

    if curBeat == 352 then

        if downscroll then
        makeAnimatedLuaSprite('boom','boom', 520, 600);
        else
        makeAnimatedLuaSprite('boom','boom', 520, -30);
        end


        addAnimationByPrefix('boom','boom','boom', 12, false);--true or false to loop
        objectPlayAnimation('boom','boom', true);
        addLuaSprite('boom', true);
        setObjectCamera('boom', 'camOther');
        scaleObject('boom', 3,1.9);
        setProperty('boom.antialiasing', false);
    end
end