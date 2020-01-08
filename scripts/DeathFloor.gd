extends Area2D

#function to reload level if player body touches the death zone
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().reload_current_scene()
	