function onCreate()
	-- background shit

	makeLuaSprite('lancertree4','lancertree', -900, -150);
	scaleObject('lancertree4', 0.6, 0.6);
	setProperty('lancertree4.alpha', 0.5);
	setScrollFactor('lancertree4', 0.5, 0.5);
	addLuaSprite('lancertree4', false);

	makeLuaSprite('lancertree5','lancertree', 0, -150);
	scaleObject('lancertree5', 0.6, 0.6);
	setProperty('lancertree5.alpha', 0.5);
	setScrollFactor('lancertree5', 0.5, 0.5);
	addLuaSprite('lancertree5', false);

	makeLuaSprite('lancertree1','lancertree', -1500, -200);
	scaleObject('lancertree1', 0.8, 0.8);
	setScrollFactor('lancertree1', 0.8, 0.8);
	addLuaSprite('lancertree1', false);

	makeLuaSprite('lancertree2','lancertree', -800, -200);
	scaleObject('lancertree2', -0.8, 0.8);
	setScrollFactor('lancertree2', 0.8, 0.8);
	addLuaSprite('lancertree2', false);

	makeLuaSprite('lancertree3','lancertree', -100, -200);
	scaleObject('lancertree3', 0.8, 0.8);
	setScrollFactor('lancertree3', 0.8, 0.8);
	addLuaSprite('lancertree3', false);

	makeLuaSprite('lancerfloor','lancerfloor', -900, -200);
	setScrollFactor('lancerfloor', 1, 1);
	addLuaSprite('lancerfloor', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

