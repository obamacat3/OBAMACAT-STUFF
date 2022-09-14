
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'igettonamethenotelol' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'igettonamethenotelol');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.046'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '1.9'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'igettonamethenotelol' then
        cameraShake('hud', 0.05, 0.5)
	end
end