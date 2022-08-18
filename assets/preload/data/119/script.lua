function onCreate()
    makeLuaSprite('blur2', 'deadblur2', -100,-200)
    scaleObject('blur2', 1.5, 1.5)
    addLuaSprite('blur2',true)
    setLuaSpriteScrollFactor('blur2', 0, 0)
    setProperty('blur2.alpha', 0)

    makeLuaSprite('dead', 'deadblur', -500,-300)
    scaleObject('dead', 2, 2)
    addLuaSprite('dead',true)
    setLuaSpriteScrollFactor('dead', 0, 0)
    setProperty('dead.alpha', 0)
end

function onUpdate()

    if getProperty('health') < 1.8 then
        doTweenAlpha('heloAlpha', 'blur2', 0, stepCrochet*0.01, 'linear')
    end

    if getProperty('health') > 1.8 then
    doTweenAlpha('bayAlpha','blur2', 0.7, stepCrochet*0.01, 'linear')


    end
    if getProperty('health') < 1.2 then
        doTweenAlpha('heloAlpha1', 'dead', 1.5, stepCrochet*0.01, 'linear')
    end

    if getProperty('health') > 1.2 then
    doTweenAlpha('bayAlpha1','dead', 0, stepCrochet*0.01, 'linear')


    end

end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 1.4 then
        setProperty('health', health- 0.3340);
    end
    health = getProperty('health')
    if getProperty('health') > 1 then
        setProperty('health', health- 0.0040);
    end

end
