extends Button

#if quit button pressed, game quits. easy enough
func _on_QuitButton_pressed():
	get_tree().quit()
