extends Area2D

#when player body touches the finish line it makes the player win
#supposed to move to next level in sequence
func _on_FinishObject_body_entered(body):
	if body.get_name() == "Player":
		get_tree().get_root().get_node("/root/WorldNode2D")._win_game()
