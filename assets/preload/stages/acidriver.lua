function onCreate()
	-- background shit

	makeLuaSprite('bg','bg', -200, -160);
	setScrollFactor('bg', 0.5, 0);
	addLuaSprite('bg', false);

	makeLuaSprite('acid','acid', -200, -200);
	setScrollFactor('acid', 0.5, 0);
	addLuaSprite('acid', false);

	makeAnimatedLuaSprite('duck','duck', -230, 200);
		addAnimationByPrefix('duck','dance','duck',19);
	addLuaSprite('duck', true);

	makeLuaSprite('lighting','lighting', -230, -150);
	setScrollFactor('lighting', 0, 1);
	setProperty('lighting.alpha',0.39)
	setBlendMode('lighting','add');
	addLuaSprite('lighting', true);

	--couldn't get Queen's sprites to work, pls help :(
		--fdzfhhgfdhfghgfdhdgfjgfjfhgjfghjhjhfghdfsahf	U	HFIUHUSH	lkfj


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit()
	objectPlayAnim('duck', 'dance', true);
end

