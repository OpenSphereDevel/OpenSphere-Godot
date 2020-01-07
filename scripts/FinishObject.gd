extends Area2D

#when any physics body touches the finish line it makes the player win
func _on_FinishObject_body_entered(body):
	print("PLAYER HAS TOUCHED FINISH")
