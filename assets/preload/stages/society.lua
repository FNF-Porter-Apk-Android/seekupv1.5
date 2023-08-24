function onCreate()
	-- background shit

	makeLuaSprite('society_bg','society_bg', -280, -200);
	setScrollFactor('society_bg', 0, 0);
	addLuaSprite('society_bg', false);

	makeLuaSprite('society_floor','society_floor', -380, -80);
	setScrollFactor('society_floor', 1, 1);
	scaleObject('society_floor', 1.2, 1.2);
	addLuaSprite('society_floor', false);


	makeLuaSprite('society_prison','society_prison', -280, -75);
	setScrollFactor('society_prison', 1, 1);
	scaleObject('society_prison', 1.2, 1.2);
	addLuaSprite('society_prison', false);

	makeLuaSprite('society_candles','society_candles', -380, -150);
	setScrollFactor('society_candles', 0.8, 0.8);
	scaleObject('society_candles', 1.2, 1.2);
	addLuaSprite('society_candles', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
