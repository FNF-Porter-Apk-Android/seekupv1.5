function onCreate()
	-- background shit

	makeLuaSprite('smile_bg','smile_bg', -200, -160);
	setScrollFactor('smile_bg', 0, 0);
	addLuaSprite('smile_bg', false);

	makeLuaSprite('backchairs','backchairs', -400, -160);
	scaleObject('backchairs', 0.6, 0.6);
	setScrollFactor('backchairs', 0.2, 0.1);
	addLuaSprite('backchairs', false);

	makeLuaSprite('smile_heaven','smile_heaven', -550, -350);
	scaleObject('smile_heaven', 0.8, 0.8);
	setScrollFactor('smile_heaven', 0.5, 0.5);
	addLuaSprite('smile_heaven', false);

	makeLuaSprite('forechairs','forechairs', -1900, -180);
	scaleObject('forechairs', 1.2, 1.2);
	setScrollFactor('forechairs', 1.3, 1.2);
	addLuaSprite('forechairs', true);

	if not lowQuality then

		makeLuaSprite('smile_light','smile_light', -500, -1200);
		setScrollFactor('smile_light', 0, 0);
		setBlendMode('smile_light','add');
		addLuaSprite('smile_light', true);

	end

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

