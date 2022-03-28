#MaxThreadsPerHotkey, 2

stop:=false
ranged:=true
first:=true

F11::
	SoundPlay, pop.wav
	ranged:=true
	stop:=true
	return

F12::
	stop:=false
loop {
	; Use boolean to play proper sound effect
	if (ranged)
	{
		SoundPlay, ranged.wav
	}
	else
	{
		SoundPlay, magic.wav
	}

	; Then flip the attack style boolean
	ranged:=!ranged

	; Add extra sleep to compensate for
	; no 'lead-in' time for first cycle
	if (first)
	{
		first := false
	}
	else
	{
		sleep, 4000
	}
	sleep, 5000

	; 'Lead-in' beeps
	loop 3
	{
		SoundBeep, 300, 250
		sleep, 750
	}
} until stop = true
return