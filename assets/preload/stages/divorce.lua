function onCreate()
	-- background shit

	makeLuaSprite('spongebob', 'spongebob', -720, -100);
	scaleObject('spongebob', 0.9,0.9);
    addLuaSprite('spongebob', false);


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
