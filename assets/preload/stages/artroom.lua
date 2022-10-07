
function onCreate()--Reehecho por Nickobelit
setHealth(0.1)
makeLuaSprite('bg', 'suspai/bg',-3100,-65);
	addLuaSprite('bg',false)
	scaleObject('bg',2,2)
	
	makeAnimatedLuaSprite('couch', 'suspai/couch',585,340);
	addAnimationByPrefix('couch', 'couch','couchsombra', 24, false)
	addAnimationByPrefix('couch', 'couch2','couchnormal', 24, false)
	objectPlayAnimation('couch', 'couch',false); 
    addLuaSprite('couch',false)
   
	makeLuaSprite('canvas', 'suspai/canvas',110,40);
	addLuaSprite('canvas',false)
	end

function onCreatePost()
setScrollFactor('couch',0.5,0.5)
setScrollFactor('boyfriend',0.5,0.5)
setScrollFactor('bg',0.5,0.5)
setScrollFactor('dad',1.2,1.2)
setScrollFactor('canvas',1.1,1.1)
setObjectOrder('boyfriendGroup',getObjectOrder('canvas'))
end
function onUpdate()
setProperty('defaultCamZoom',1);
if mustHitSection and curBeat < 152 then
setProperty('defaultCamZoom',1.4)
end
end

function onStepHit()
if curStep == 617 then
doTweenX('ddd','boyfriend',682,0.1)
end
if curStep == 635 then
triggerEvent('Change Character','dad','naotoAlt');
end
end

function onBeatHit()
if curBeat == 152 then
setObjectOrder('boyfriendGroup',getObjectOrder('dadGroup'))
end
end

