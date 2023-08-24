-- script by ItsCapp don't steal, it's dumb

-- simply, offsets. they're the numbers in the top left of the character editor
idleoffsets = {'0', '0'} -- I recommend you have your idle offset at 0
leftoffsets = {'0', '0'}
downoffsets = {'0', '0'}
upoffsets = {'0', '0'}
rightoffsets = {'0', '0'}
dieoffsets = {'0', '0'}

-- change all of these to the name of the animation in your character's xml file
idle_xml_name = 'gkris idle'
left_xml_name = 'gkris left'
down_xml_name = 'gkris down'
up_xml_name = 'gkris up'
right_xml_name = 'gkris right'
die_xml_name = 'gkris die'

-- basically horizontal and vertical positions
x_position = 1000
y_position = 156

-- scales your character (set to 1 by default)
xScale = 0.7
yScale = 0.7

-- invisible character (so basically if you wanna use the change character event, you need to make the second character invisible first)
invisible = false

-- pretty self-explanitory
name_of_character_xml = 'gkris'
name_of_character = 'gkris'
name_of_notetype = 'Lancer Sing'
name_of_notetype2 = 'dgasdgfdgfdg' -- you don't need this, but if you want a notetype that has multiple characters to sing you can use this.

-- if it's set to true the character appears behind the default characters, including gf, watch out for that
foreground = true
playablecharacter = false -- change to 'true' if you want to flipX

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

doIdle = true

function onCreate()
	makeAnimatedLuaSprite(name_of_character, 'characters/' .. name_of_character_xml, x_position, y_position);

	setProperty('gkris.alpha', 0);
	setProperty('dad.alpha', 0);

	addAnimationByPrefix(name_of_character, 'idle', idle_xml_name, 12, false);
	addAnimationByPrefix(name_of_character, 'singLEFT', left_xml_name, 12, false);
	addAnimationByPrefix(name_of_character, 'singDOWN', down_xml_name, 12, false);
	addAnimationByPrefix(name_of_character, 'singUP', up_xml_name, 12, false);
	addAnimationByPrefix(name_of_character, 'singRIGHT', right_xml_name, 12, false);
	addAnimationByPrefix(name_of_character, 'die', die_xml_name, 16, false);

	if playablecharacter == true then
		setPropertyLuaSprite(name_of_character, 'flipX', true);
	else
		setPropertyLuaSprite(name_of_character, 'flipX', false);
	end

	scaleObject(name_of_character, xScale, yScale);


	objectPlayAnimation(name_of_character, 'idle');
	addLuaSprite(name_of_character, foreground);

	if invisible == true then
		setPropertyLuaSprite(name_of_character, 'alpha', 0)
	end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype or noteType == name_of_notetype2 then
		doIdle = false
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);

			if isSustainNote then
				objectPlayAnimation(name_of_character, singAnims[direction + 1], true);
			end
		end
	end
end

-- I know this is messy, but it's the only way I know to make it work on both sides.
local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == name_of_notetype or noteType == name_of_notetype2 then
		doIdle = false
		objectPlayAnimation(name_of_character, singAnims[direction + 1], false);

		if direction == 0 then
			setProperty(name_of_character .. '.offset.x', leftoffsets[1]);
			setProperty(name_of_character .. '.offset.y', leftoffsets[2]);
		elseif direction == 1 then
			setProperty(name_of_character .. '.offset.x', downoffsets[1]);
			setProperty(name_of_character .. '.offset.y', downoffsets[2]);
		elseif direction == 2 then
			setProperty(name_of_character .. '.offset.x', upoffsets[1]);
			setProperty(name_of_character .. '.offset.y', upoffsets[2]);
		elseif direction == 3 then
			setProperty(name_of_character .. '.offset.x', rightoffsets[1]);
			setProperty(name_of_character .. '.offset.y', rightoffsets[2]);
		end
	end
end

function onBeatHit()
	-- triggered 4 times per section
	if doIdle == true and curBeat < 364 then
		objectPlayAnimation(name_of_character, 'idle', false);
		setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
		setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
	end
	doIdle = true



	if curBeat > 15 and curBeat < 238 then
		doTweenAlpha('skyTweenIn', 'IMAGE_SKY', 1, 1, 'linear');
		doTweenAlpha('treesTweenIn', 'IMAGE_TREES', 1, 0.8, 'linear');
		doTweenAlpha('shelterTweenIn', 'IMAGE_SHELTER', 1, 0.5, 'linear');
		doTweenAlpha('dadTweenIn', 'dad', 1, 0.1, 'linear');
	end

	if curBeat > 239 and curBeat < 270 then --bf dies and lights go out
		doTweenAlpha('skyTweenIn2', 'IMAGE_SKY', 0, 0.3, 'linear');
		doTweenAlpha('treesTweenIn2', 'IMAGE_TREES', 0, 0.2, 'linear');
		doTweenAlpha('shelterTweenIn2', 'IMAGE_SHELTER', 0, 0.1, 'linear');
		doTweenAlpha('dadTweenIn2', 'dad', 0, 0.00005, 'linear');
	end


	if curBeat > 271 and curBeat < 365 then

		doTweenAlpha('ocean appear for the good part', 'ocean', 1, 1, linear);

		doTweenAlpha('skyTweenIn3', 'IMAGE_SKY', 1, 1, 'linear');
		doTweenAlpha('treesTweenIn3', 'IMAGE_TREES', 1, 0.8, 'linear');
		doTweenAlpha('shelterTweenIn3', 'IMAGE_SHELTER', 1, 0.5, 'linear');
		doTweenAlpha('dadTweenIn3', 'dad', 1, 0.1, 'linear');


		setProperty('gkris.alpha', 1); --kris and susie appear
		setProperty('rain.alpha', 0.4);
		setProperty('rain2.alpha', 0.2);
	end

	if curBeat == 366 then
		doTweenAlpha('go dark', 'IMAGE_TREES', 0, 2, linear);
		doTweenAlpha('go dark2', 'IMAGE_SKY', 0, 1, linear);
	end
end

function onCountdownTick(counter)
	-- counter = 0 -> "Three"
	-- counter = 1 -> "Two"
	-- counter = 2 -> "One"
	-- counter = 3 -> "Go!"
	-- counter = 4 -> Nothing happens lol, tho it is triggered at the same time as onSongStart i think
	if counter % 4 == 0 then
		if doIdle == true then
			objectPlayAnimation(name_of_character, 'idle');
			setProperty(name_of_character .. '.offset.x', idleoffsets[1]);
			setProperty(name_of_character .. '.offset.y', idleoffsets[2]);
		end
	end
end

function onStepHit()
	if curStep == 1455 then
		objectPlayAnimation(name_of_character, 'die', false);
	end
end