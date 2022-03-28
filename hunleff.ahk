SetWorkingDir %A_ScriptDir%
#MaxThreadsPerHotkey, 2

stop:=false
ranged:=true
first:=true

F9::
	stop:=false
	loop
	{
		if (first)
		{
			SoundPlay, gl.wav
		}
		else if (ranged)
		{
			SoundPlay, ranged.wav
		}
		else
		{
			SoundPlay, magic.wav
		}

		ranged:=!ranged

		if (first)
		{
			first := false
			sleep, 7400 ; 14 ticks
		}
		else
		{
			sleep, 11000 ; 20 ticks
		}

		SoundPlay, womp.wav
		sleep 1000

	} until stop = true
	return

F10::
	SoundPlay, pop.wav
	ranged:=true
	first:=true
	stop:=true
	return