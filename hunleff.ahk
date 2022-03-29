SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey, 2

SoundPlay, womp.wav

rangedPhase:=true
initialPhase:=true

F5::
	loop
	{
		if (initialPhase)
		{
			initialPhase:=false
			SoundPlay, gl.wav
			sleep, 5000
		}
		else if (rangedPhase)
		{
			SoundPlay, ranged.wav
			sleep, 8900
		}
		else
		{
			SoundPlay, magic.wav
			sleep, 8900
		}
		rangedPhase:=!rangedPhase
		SoundPlay, blip.wav
		sleep, 1000
		SoundPlay, blip.wav
		sleep, 1000
		SoundPlay, blip.wav
		sleep, 1000
	}

F6::	Reload