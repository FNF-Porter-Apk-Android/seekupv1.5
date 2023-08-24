function onCreate()
	-- background shit

	makeAnimatedLuaSprite('ocean','ocean', -200, -200);
	addAnimationByPrefix('ocean','wobble','ocean wobble',15);
	setScrollFactor('ocean', 0.5, 0.3);
	addLuaSprite('ocean', false);
	
	makeLuaSprite('IMAGE_SKY', 'IMAGE_SKY', -1000, -650);
	setScrollFactor('IMAGE_SKY', 0, 0);
	scaleObject('IMAGE_SKY', 1, 1);
	addLuaSprite('IMAGE_SKY');

	makeLuaSprite('IMAGE_TREES', 'IMAGE_TREES', -500, -400);
	setScrollFactor('IMAGE_TREES', 0.4, 0.4);
	scaleObject('IMAGE_TREES', 0.8, 0.8);
	addLuaSprite('IMAGE_TREES');

	makeLuaSprite('IMAGE_SHELTER', 'IMAGE_SHELTER', -666, -480);
	setScrollFactor('IMAGE_SHELTER', 1, 1);
	scaleObject('IMAGE_SHELTER', 0.8, 0.8);
	addLuaSprite('IMAGE_SHELTER');

	makeAnimatedLuaSprite('rain', 'rain', 0, 0);
	addAnimationByPrefix('rain', 'rain', 'rain rain', 30, true);
	setProperty('rain.alpha', 0);
	setScrollFactor('rain', 0.0, 0.0);
	addLuaSprite('rain', false);
	setObjectCamera('rain', 'camOther', false);

	makeAnimatedLuaSprite('rain2', 'rain', 0, 0);
	addAnimationByPrefix('rain2', 'rain', 'rain rain', 35, true);
	scaleObject('rain2', 1.3, 1.3);
	setProperty('rain2.alpha', 0);
	setScrollFactor('rain2', 0.0, 0.0);
	addLuaSprite('rain2', false);
	setObjectCamera('rain2', 'camOther', false);

	--starts with just BF, rest fades in later.
	setProperty('IMAGE_SKY.alpha', 0);
	setProperty('IMAGE_TREES.alpha', 0);
	setProperty('IMAGE_SHELTER.alpha', 0);
	setProperty('ocean.alpha', 0);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end


function onBeatHit()

	objectPlayAnim('ocean', 'wobble', false);

end