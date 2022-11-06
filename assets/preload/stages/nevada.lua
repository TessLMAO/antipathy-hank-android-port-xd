local xx = 605.64
local yy = 805.49
local xx2 = 1368.82
local yy2 = 917.40
local ofs = 50
local followchars = true

function onCreate()
	--PRELOADING IT
	precacheImage('down0')
	precacheImage('down1')
	precacheImage('down2')
	precacheImage('down3')
    
    makeLuaSprite('sky', 'antipathy/redsun/patassky', -450, -400)
	setScrollFactor('sky', 0.3, 0.3)

    makeLuaSprite('build', 'antipathy/redsun/patasbuildings', -450, -600)
	setScrollFactor('build', 0.3, 0.3)
    scaleObject('build', 1.1, 1.1)

	makeLuaSprite('stones', 'antipathy/redsun/patasgroundstones', -460, -480)
	scaleObject('stones', 1.0, 1.0)
    scaleObject('stones', 1.1, 1.1)

    makeLuaSprite('ground', 'antipathy/redsun/patasground', -460, -480)
	scaleObject('ground', 1.0, 1.0)
    scaleObject('ground', 1.1, 1.1)

    makeLuaSprite('front', 'antipathy/redsun/patasrocksfore', -460, -450)
	scaleObject('front', 1.0, 1.0)
    scaleObject('front', 1, 1)

    addLuaSprite('sky', false)
	addLuaSprite('build', false)
    addLuaSprite('stones', false)
	addLuaSprite('ground', false)
	addLuaSprite('front', true)
	--close(true) --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onUpdate()
	if followchars == true then
        if mustHitSection == false then
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
	if name == 'Trigger BG Ghouls' then
		hey = tonumber(value1)
		
		if hey == 0 then
			followchars = true
		elseif hey == 1 then
			followchars = false
			triggerEvent('Camera Follow Pos',1368,917)
		end
	end
end