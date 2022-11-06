--Custom Healthbar OwO

	--Zoe.exe
-----------------------------------------------------------
--//Vars//--

-----------------------------------------------------------
--//Creating HealthBar//--

-----------------------------------------------------------
--//HB Offsets//--
function onCreatePost()
	--/Setting Objects/--
	setProperty('healthBar.alpha', 1) -- invi actual healthBar, 1 for not invi
	setProperty('healthBarBG.alpha', 1) -- invi actual healthBarBG, 1 for not invi
----------------------------------
	-- you can change orientation on the health bar any you want  like, setting angle,scale x. Go to psycu wiki for more cool stuff to setting objects
----------------------------------
	--Fucker's Healthbar
	setProperty('baseHB.alpha',  getPropertyFromClass('ClientPrefs', 'healthBarAlpha'))
	setProperty('baseHB.x', getProperty('healthBar.x') - 60)
	setProperty('baseHB.angle', getProperty('healthBar.angle'))
	setProperty('baseHB.y', getProperty('healthBar.y') - 100)
	--setProperty('bendyHB.scale.x', getProperty('healthBar.scale.x'))
	--setProperty('bendyHB.scale.y', getProperty('healthBar.scale.y'))
end
-----------------------------------------------------------
-- This is in example of Bendy Indie Cross HealthBar. you can edit it and add your health bar there,enjoy
-----------------------------------------------------------