function onUpdate(elasped)
	songPos = getSongPosition()
	local currentBeat = (songPos/100)/(curBpm/70)

	local boobs = true
	local deee = 650

	if not middlescroll then



		if curBeat == 0 then
		noteTweenX('defaultPlayerStrumX0', 4, 120 , 0.001)
		noteTweenX('defaultPlayerStrumX1', 5, 120+110 , 0.001)
		noteTweenX('defaultPlayerStrumX2', 6, 120+110+110 , 0.001)
		noteTweenX('defaultPlayerStrumX3', 7, 120+110+110+110 , 0.001)
	
		noteTweenX('defaultOpponentStrumX0', 0, 95+deee , 0.001)
		noteTweenX('defaultOpponentStrumX1', 1, 95+110+deee , 0.001)
		noteTweenX('defaultOpponentStrumX2', 2, 95+110+110+deee , 0.001)
		noteTweenX('defaultOpponentStrumX3', 3, 95+110+110+110+deee , 0.001)
		end

		

	end

	if curBeat == 256 then --black screen at the end
		makeLuaSprite('BLACK', nil, 0, 0, 720)
		makeGraphic('BLACK', screenWidth, screenHeight, '000000')
		setObjectCamera('BLACK', 'camHUD', false)
		addLuaSprite('BLACK')
	end

end