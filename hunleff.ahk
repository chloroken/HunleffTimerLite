SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey, 2

SoundPlay, welcome.wav

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
			SoundPlay, fullranged.wav
			sleep, 12000
		}
		else
		{
			SoundPlay, fullmagic.wav
			sleep, 12000
		}
		rangedPhase:=!rangedPhase
	}

F6::	Reload