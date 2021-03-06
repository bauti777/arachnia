extends Control


func _ready():
	pass

var menu = 0
var submenu = 1


func _process(delta):
	keyCheck()
	
	match submenu:
		1:
			$CanvasLayer/Menu1.show()
			$CanvasLayer/Menu2.hide()
			match menu:
				0:
					$CanvasLayer/Menu1/MenuSelector1/MenuSelector1Active.show()
					$CanvasLayer/Menu1/MenuSelector2/MenuSelector2Active.hide()
					$CanvasLayer/Menu1/MenuSelector3/MenuSelector3Active.hide()
					$CanvasLayer/Menu1/MenuSelector4/MenuSelector4Active.hide()
				1:
					$CanvasLayer/Menu1/MenuSelector2/MenuSelector2Active.show()
					$CanvasLayer/Menu1/MenuSelector1/MenuSelector1Active.hide()
					$CanvasLayer/Menu1/MenuSelector3/MenuSelector3Active.hide()
					$CanvasLayer/Menu1/MenuSelector4/MenuSelector4Active.hide()
				2:
					$CanvasLayer/Menu1/MenuSelector3/MenuSelector3Active.show()
					$CanvasLayer/Menu1/MenuSelector2/MenuSelector2Active.hide()
					$CanvasLayer/Menu1/MenuSelector1/MenuSelector1Active.hide()
					$CanvasLayer/Menu1/MenuSelector4/MenuSelector4Active.hide()
				3:
					$CanvasLayer/Menu1/MenuSelector4/MenuSelector4Active.show()
					$CanvasLayer/Menu1/MenuSelector2/MenuSelector2Active.hide()
					$CanvasLayer/Menu1/MenuSelector1/MenuSelector1Active.hide()
					$CanvasLayer/Menu1/MenuSelector3/MenuSelector3Active.hide()
		2:
			$CanvasLayer/Menu1.hide()
			$CanvasLayer/Menu2.show()
			checkVolume()
			match menu:
				0:
					$CanvasLayer/Menu2/MenuSelector1/MenuSelector1Active.show()
					$CanvasLayer/Menu2/MenuSelector2/MenuSelector2Active.hide()
					$CanvasLayer/Menu2/MenuSelector3/MenuSelector3Active.hide()
				1:
					$CanvasLayer/Menu2/MenuSelector2/MenuSelector2Active.show()
					$CanvasLayer/Menu2/MenuSelector1/MenuSelector1Active.hide()
					$CanvasLayer/Menu2/MenuSelector3/MenuSelector3Active.hide()
					
				2:
					$CanvasLayer/Menu2/MenuSelector3/MenuSelector3Active.show()
					$CanvasLayer/Menu2/MenuSelector2/MenuSelector2Active.hide()
					$CanvasLayer/Menu2/MenuSelector1/MenuSelector1Active.hide()

func keyCheck():
	if Input.is_action_just_pressed("ui_down"):
		match submenu:
			1:
				menu +=1
				if menu >= 4:
					menu = 0
			2:
				menu +=1
				if menu >= 3:
					menu = 0
	elif Input.is_action_just_pressed("ui_up"):
		match submenu:
			1:
				menu -= 1
				if menu < 0:
					menu = 3
			2:
				menu -= 1
				if menu < 0:
					menu = 2
	
	if Input.is_action_just_pressed("ui_accept"):
		match submenu:
			1:
				match menu:
					0:
						Global.pauseFunction()
					1:
						submenu = 2
						menu = 0
					2:
						get_tree().change_scene(Global.MainMenu)
						Global.pauseFunction()
					3:
						get_tree().quit()
			2:
				match menu:
					0:
						pass
					1:
						pass
					2:
						submenu = 1
						menu = 0
	
	if submenu == 2 && menu == 0:
		if Input.is_action_just_pressed("ui_left"):
			if Global.volume > -72:
				Global.volume -= 8
				AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"),Global.volume)
				print(-Global.volume/8)
				match (-Global.volume/8):
					1:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
					2:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
					3:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
					4:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
					5:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
					6:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
					7:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
					8:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.hide()
					9:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.hide()
		if Input.is_action_just_pressed("ui_right"):
			if Global.volume < 0:
				Global.volume += 8
				AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"),Global.volume)
				print(-Global.volume/8)
				match (-Global.volume/8):
					0:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.show()
					1:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.show()
					2:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.show()
					3:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar6/BarActive.show()
					4:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar5/BarActive.show()
					5:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar4/BarActive.show()
					6:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar3/BarActive.show()
					7:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume/Bar2/BarActive.show()
					8:
						$CanvasLayer/Menu2/Volume/Bar1/BarActive.show()
	if submenu == 2 && menu == 1:
		if Input.is_action_just_pressed("ui_left"):
			if Global.sound_volume > -72:
				Global.sound_volume -= 8
				AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Sounds"),Global.sound_volume)
				print(-Global.sound_volume/8)
				match (-Global.sound_volume/8):
					1:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
					2:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
					3:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
					4:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
					5:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
					6:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
					7:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
					8:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.hide()
					9:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.hide()
		if Input.is_action_just_pressed("ui_right"):
			if Global.sound_volume < 0:
				Global.sound_volume += 8
				AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Sounds"),Global.sound_volume)
				print(-Global.sound_volume/8)
				match (-Global.sound_volume/8):
					0:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.show()
					1:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.show()
					2:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.show()
					3:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.show()
					4:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.show()
					5:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.show()
					6:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.show()
					7:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.show()
					8:
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.show()





func checkVolume():
	match (-Global.volume/8):
		1:
			$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
		2:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
		3:
						$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
		4:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
		5:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
		6:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
		7:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
		8:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar2/BarActive.hide()
		9:
							$CanvasLayer/Menu2/Volume/Bar9/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar8/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar7/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar6/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar5/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar4/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar3/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar2/BarActive.hide()
							$CanvasLayer/Menu2/Volume/Bar1/BarActive.hide()
	
	match (-Global.sound_volume/8):
					1:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
					2:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
					3:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
					4:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
					5:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
					6:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
					7:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
					8:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.hide()
					9:
						$CanvasLayer/Menu2/Volume2/Bar9/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar8/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar7/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar6/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar5/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar4/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar3/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar2/BarActive.hide()
						$CanvasLayer/Menu2/Volume2/Bar1/BarActive.hide()
