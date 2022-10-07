function onCreate()
makeLuaSprite('bg', 'komi/bg',-620,-180);
	addLuaSprite('bg',false)
	scaleObject('bg',1.26,1.26)
	setScrollFactor('bg',0.6,0.6)
	
	makeLuaSprite('desks', 'komi/desks',-670,-260);
	addLuaSprite('desks',true)
	scaleObject('desks',1.26,1.26)
    setScrollFactor('desks',1.2,1.2)
    
    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1281,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1281,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')
    
    makeLuaSprite('Nickomi1', 'komi/KomiIntro', 0,0)
    addLuaSprite('Nickomi1', false)
    setProperty('Nickomi.alpha',0)
    setObjectCamera('Nickomi1', 'camother')
        makeLuaSprite('Nickomi2', 'komi/KomiIntro2', 0,0)
    addLuaSprite('Nickomi2', false)
    setProperty('Nickomi2.alpha',0)
    setObjectCamera('Nickomi2', 'camother')
    makeLuaSprite('Nickomi3', 'komi/KomiIntro3', 0,0)
    addLuaSprite('Nickomi3', false)
    setProperty('Nickomi3.alpha',0)
    setObjectCamera('Nickomi3', 'camother')

runTimer('blink1',6,0)
runTimer('blink4',4,0)
setProperty('gf.visible',false)
setProperty('gf.flipX',false)
setObjectOrder('boyfriendGroup',getObjectOrder('gfGroup'))
end

function onStartCountdown()
runTimer('blink2',9,0)
end

function onTimerCompleted(t,l,ll)

if t == 'unblink1' then
	blinkAnim(false,'dad')
end
if t == 'blink1' then
	blinkAnim(true,'dad')
	runTimer('unblink1',0.08)
end

if t == 'unblink2' then
	blinkAnim(false,'boyfriend')
end
if t == 'blink2' then
	blinkAnim(true,'boyfriend')
	runTimer('unblink2',0.08)
end


if t == 'unblink4' then
	blinkAnim(false,'gf')
end
if t == 'blink4' then
	blinkAnim(true,'gf')
	runTimer('unblink4',0.08)
end


if t == 'unblink3' then
	blinkAnim2(false,'najimi')
end
if t == 'blink3' then
	blinkAnim2(true,'najimi')
	runTimer('unblink3',0.1)
end

if t == 'bfWalkDown' then
doTweenY('bfdo','gf',213,0.3,'sineIn')
	runTimer('bfWalkUp',0.3)
end
if t == 'bfWalkUp' then
doTweenY('bfup','gf',193,0.3,'sineOut')
end
end


function onBeatHit()
if curBeat == 72 then
setProperty('gf.visible',true)
doTweenX('bfEnter','gf',880,2.7)
runTimer('bfWalkDown',0.6,4)
end

if curBeat == 122 then
getVar('najimi').visible = true;
runTimer('blink3',5,0)
end
if curBeat == 162 then
setProperty("defaultCamZoom",1.25)
end
if curBeat == 164 then
doTweenAlpha('1','camHUD',0,1)
doTweenColor('dddd','boyfriend','000000',6)
doTweenColor('ddfdd','gf','000000',6)
doTweenColor('ddgdd','bg','333333',6)
doTweenColor('ddhdd','desks','000000',6)
doTweenColor('najimi','najimi','000000',6)
noteTweenAlpha("notapl1", 0, 0, 1, "linear")
	noteTweenAlpha("notapl2", 1, 0, 1, "linear")
	noteTweenAlpha("notapl3", 2, 0, 1, "linear")
	noteTweenAlpha("notapl4", 3, 0, 1, "linear")
noteTweenAlpha("notaop1", 4, 0, 1, "linear")
	noteTweenAlpha("notaop2", 5, 0, 1, "linear")
	noteTweenAlpha("notaop3", 6, 0, 1, "linear")
	noteTweenAlpha("notaop4", 7, 0, 1, "linear")
end
if curBeat == 202 then
doTweenColor('dddd','boyfriend','FFFFFF',3)
doTweenColor('ddhdd','gf','FFFFFF',3)
doTweenColor('dddfd','bg','FFFFFF',3)
doTweenColor('ddddd','desks','FFFFFF',3)
doTweenColor('najimi','najimi','FFFFFF',3)
end
if curBeat == 205 then
doTweenAlpha('1','camHUD',1,1)
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then--Detalles pa ,Detalles
noteTweenAlpha("notaop1", 0, 0.5, 1, "linear")
	noteTweenAlpha("notaop2", 1, 0.5, 1, "linear")
	noteTweenAlpha("notaop3", 2, 0.5, 1, "linear")
	noteTweenAlpha("notaop4", 3, 0.5, 1, "linear")
noteTweenAlpha("notapl1", 4, 1, 1, "linear")
	noteTweenAlpha("notapl2", 5, 1, 1, "linear")
	noteTweenAlpha("notapl3", 6, 1, 1, "linear")
	noteTweenAlpha("notapl4", 7, 1, 1, "linear")
	end
if getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
noteTweenAlpha("notaop1", 0, 1, 1, "linear")
	noteTweenAlpha("notaop2", 1, 1, 1, "linear")
	noteTweenAlpha("notaop3", 2, 1, 1, "linear")
	noteTweenAlpha("notaop4", 3, 1, 1, "linear")
noteTweenAlpha("notapl1", 4, 1, 1, "linear")
	noteTweenAlpha("notapl2", 5, 1, 1, "linear")
	noteTweenAlpha("notapl3", 6, 1, 1, "linear")
	noteTweenAlpha("notapl4", 7, 1, 1, "linear")
end
end
if curBeat == 224 then
triggerEvent('Change Character','dad','komiChiquita');
end
end
