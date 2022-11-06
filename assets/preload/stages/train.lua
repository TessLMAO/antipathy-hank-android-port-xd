local i = 0
local xx = 908.78
local yy = 762.40
local xx2 = 1357.77
local yy2 = 700.44
local ofs = 50
local followchars = true
local hankdown = false

function onCreate()
    makeLuaSprite('sky', 'antipathy/train/trickybgsky', -1500, -500)
	setScrollFactor('sky', 0.3, 0.3)
    scaleObject('sky', 1.6, 1.6)

    

    makeLuaSprite('build', 'antipathy/train/trickybgfarmountains', -1500, -100)
	setScrollFactor('build', 0.3, 0.3)
    scaleObject('build', 1.6, 1.6)

    
	makeLuaSprite('stones', 'antipathy/train/trickybgmountains', -1500, 300)
	scaleObject('stones', 1.0, 1.0)
    scaleObject('stones', 1.6, 1.6)

    
    makeLuaSprite('ground', 'antipathy/train/trickybgtrain', -1500, 250)
	scaleObject('ground', 1.0, 1.0)
    scaleObject('ground', 1.6, 1.6)

    makeLuaSprite('front', 'antipathy/train/trainfog', -1500, 950)
	scaleObject('front', 1.0, 1.0)
    scaleObject('front', 1.6, 1.6)

    addLuaSprite('sky', false)
   
	addLuaSprite('build', false)
    
    addLuaSprite('stones', false)
    
	addLuaSprite('ground', false)
	addLuaSprite('front', false)

    
	--close(true) --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate(elapsed)
i = i + 1

    
	if followchars == true then
        if mustHitSection == false then
			if hankdown == false then
				setProperty('defaultCamZoom',0.4)
			else
				setProperty('defaultCamZoom',1.2)
			end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
			setProperty('defaultCamZoom',0.6)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
		else
			triggerEvent('Camera Follow Pos','','')
		end
end

function onEvent(name,value1,value2)
	
	if name  == 'Brain Damage' then --owch
		setProperty('health', 0.0182)
		hankdown = true
	end
	
	if name  == 'Vignette Fade' then --ok get up nerd
		hankdown = false
	end
end
