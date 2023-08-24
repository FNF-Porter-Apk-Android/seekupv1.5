function onCreate()
	-- background shit

	makeLuaSprite('frozenChickenBG','frozenChickenBG', -350, 20);
	setScrollFactor('frozenChickenBG', 0.2, 0.2);
	scaleObject('frozenChickenBG', 0.71, 0.71);
	addLuaSprite('frozenChickenBG', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
