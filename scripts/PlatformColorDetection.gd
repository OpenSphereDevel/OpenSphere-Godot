extends Area2D

#if platform isnt grey, and player touches it, and player is not its color, then die
func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		if get_parent().get_node("Sprite").get_self_modulate() != Color(0.5,0.5,0.5,1):
			if get_parent().get_node("Sprite").get_self_modulate() != get_tree().get_root().get_node("/root/WorldNode2D/Player").get_node("BallSprite").get_self_modulate():
				get_tree().reload_current_scene()