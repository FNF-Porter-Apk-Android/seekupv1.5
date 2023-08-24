function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'explode'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'ded'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'urdedlol'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'notded'); --put in mods/music/
end