
function onCreate()
    precacheImage('assets name')
    makeAnimatedLuaSprite('icon', 'assets name', getProperty('iconP2.x'), getProperty('iconP2.y'))
    addAnimationByPrefix('icon', 'loop', 'mame on xml', 24, true)
    setObjectCamera('icon', 'hud')
end

function onCreatePost()
    objectPlayAnimation('icon', 'loop', false)
    addLuaSprite('icon', true)
end

function onUpdate()
    setProperty('icon.x', getProperty('iconP2.x'))
    --you can remove these below to reduce lag but then you cant modchart things like camHUD.angle
    setProperty('icon.y', getProperty('iconP2.y'))
    setProperty('icon.angle', getProperty('iconP2.angle'))
end