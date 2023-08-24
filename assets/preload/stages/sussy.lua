function onCreate()
	-- background shit

	makeLuaSprite('PrisonBg','PrisonBg', -380, -80);
	setScrollFactor('PrisonBg', 0.9, 0.9);
	scaleObject('PrisonBg', 0.9, 0.9);
	addLuaSprite('PrisonBg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
