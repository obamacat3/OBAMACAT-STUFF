local thskfjds = false
function onCreate()
    makeAnimatedLuaSprite('sanesssss', 'assets name', 0,0)
    addAnimationByPrefix('sanesssss', 'shoot', 'aname', 24, false)
    setObjectCamera('hud')
end
function onCreatePost()
    setScrollFactor('sanesssss', 0, 0)
    addLuaSprite('sanesssss', true)
end

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.space') then
        characterPlayAnim('bf', 'dodge', true)
        thskfjds = true
    end
end
function onStepHit()
    if thskfjds then
        runTimer('adc', 1, 1)
    end
end
function onTimerCompleted(tag)
    if tag == 'timing' then
        hgsf = getProperty('health')
        setProperty('health', hgsf-1.9)
    if tag == 'adc' then
        thskfjds = false
    end
end
function onEvent(name)
    if name == 'asdfghjkl' then
        objectPlayAnimation('sanesssss', 'shoot', true)
        runTimer('timing', --[[put here a time so when it shoots bf dies]], 1)
    end
end

