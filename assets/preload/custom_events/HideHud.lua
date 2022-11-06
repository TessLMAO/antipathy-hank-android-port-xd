function onEvent(name, value1)
	if name == 'HideHud' then
		setProperty('camHUD.visible', false);
		setProperty('camHUD.alpha', 0.00001);
	end
end
