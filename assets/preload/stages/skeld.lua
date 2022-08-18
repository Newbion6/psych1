function onCreate()


    makeLuaSprite('su', 'skeld/estrellas', -1550, -400)
    scaleObject('su', 0.9, 0.9)
    setScrollFactor('su', 0.3, 0.3);
	addLuaSprite('su',false)

    makeLuaSprite('su2', 'skeld/luna', 650, -300)
    scaleObject('su2', 1.2, 1.2)
    setScrollFactor('su2', 0.3, 0.3);
	addLuaSprite('su2',false)
    doTweenX('su2X','su2', -1000, 250, 'linear')

    makeLuaSprite('su1', 'skeld/Polus', -950, -300)
    scaleObject('su1', 0.8, 0.8)
    setScrollFactor('su1', 0.3, 0.3);
	addLuaSprite('su1',false)
    doTweenX('su1X','su1', 1000, 200, 'linear')

    

    makeLuaSprite('Tr', 'skeld/fondo', -1900, -500)
	addLuaSprite('Tr',false)
    scaleObject('Tr', 0.6, 0.6)

    makeLuaSprite('Tr2', 'skeld/mesas', -1300, 300)
	addLuaSprite('Tr2',false)
    scaleObject('Tr2', 0.8, 0.8)

    makeLuaSprite('Tr3', 'skeld/cables', -1500, 300)
	addLuaSprite('Tr3',false)
    scaleObject('Tr3', 0.8, 0.8)

    makeLuaSprite('Tr3', 'screamer1', -250, -100)
    scaleObject('Tr3', 1.5, 1.5)
    setScrollFactor('Tr3', 0, 0);
    addLuaSprite('Tr3',true)
    setProperty('Tr3.alpha', 0)

    setObjectCamera('blur', 'camHud')


end




function onStepHit()

    if curStep %1== 0 then
        doTweenX('move1', 'Tr3', -340, stepCrochet*0, 'linear')
   end 
   
   if curStep %2== 0 then

        doTweenX('move2', 'Tr3', -360, stepCrochet*0, 'linear')
    end 

    if curStep == 118 then
         elPEPE()
	end 
    if curStep == 143 then
         elPEPE2()
	end 

    if curStep == 636 then
        elPEPE3()
   end 
   if curStep == 637 then
        elPEPE4()
   end 
   
   if curStep == 638 then
        elPEPE3()
   end
   if curStep == 639 then
     elPEPE2()
   end
   if curStep == 639 then
        elPEPE2()
  end
  if curStep == 1120 then
      elPEPE()
  end
  if curStep == 1138 then
	doTweenAlpha('screamer','Tr3', -1, stepCrochet*0.05, 'linear')

end 
end

function elPEPE()
	doTweenAlpha('screamer','Tr3', 1, stepCrochet*0.005, 'linear')
end

function elPEPE2()
	doTweenAlpha('screamer','Tr3', -1, stepCrochet*0.03, 'linear')
end

function elPEPE3()
	doTweenAlpha('screamer','Tr3', 1, stepCrochet*0.0005, 'linear')
end

function elPEPE4()
	doTweenAlpha('screamer','Tr3', -1, stepCrochet*0.0005, 'linear')
end