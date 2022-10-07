--Creditos a mi (Nickobelit) por el código
--el que robe el código es gei xd
--(además que no será tan fácil)
function onCreate()--Por Nickobelit
	makeAnimatedLuaSprite('najimi', 'characters/najimi',0, 220); -- Change to characters idle in XML
	addAnimationByPrefix('najimi', 'idle', '_najimi idle', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('najimi', '0', '_najimi left', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('najimi', '1', '_najimi down', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('najimi', '2', '_najimi up', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('najimi', '3', '_najimi right', 24, false);-- Change to characters rightnote in XML
    addAnimationByPrefix('najimi', 'blink', '_najim blink', 24, false); 
	objectPlayAnimation('najimi', 'idle'); 
	addLuaSprite('najimi', false)
    setProperty('najimi.alpha', 0);
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('najimi', 'idle');
	end
if curBeat == 122 then
setProperty('najimi.alpha', 1);
end
end

lastNote = {0, ""}

function opponentNoteHit(id, noteData, noteType, isSustainNote)--Nickobelit lo hizo :0
if noteType == 'Note najimi' then
if noteData == 0 then
			objectPlayAnimation('najimi','0')
                setProperty('najimi.offset.x',54)
                setProperty('najimi.offset.y',-10)
		end
		if noteData == 1 then
			objectPlayAnimation('najimi','1')
                setProperty('najimi.offset.x',10)
                setProperty('najimi.offset.y',-12)
		end
		if noteData == 2 then
			objectPlayAnimation('najimi','2')
                setProperty('najimi.offset.x',30)
                setProperty('najimi.offset.y',22)
		end
		if noteData == 3 then
			objectPlayAnimation('najimi','3')
                setProperty('najimi.offset.x',18)
                setProperty('najimi.offset.y',3)
		end
end
end
--El código es tan Insano que robarlo es un delito 👮‍♂️