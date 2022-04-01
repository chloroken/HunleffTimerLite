SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey, 2

SoundPlay, ready.wav

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
			sleep, 11970
		}
		else
		{
			SoundPlay, magic.wav
			sleep, 11970
		}
		rangedPhase:=!rangedPhase
	}

F6::	Reload