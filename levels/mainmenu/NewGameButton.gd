extends Button

#somehow this magically knows when button is pressed
#created using the node/signals thing
#for now only loads the level template, obviously no real levels made yet
func _on_NewGameButton_pressed():
	get_tree().change_scene("res://levels/cloud/cloud1.tscn")
