extends Area2D

#if any sort of body touches the death area it does its thing
#because i cant figure out how the HELL to make it only for the player
#DO NOT HAVE WALLS TOUCHING THIS OR ELSE THIS SCRIPT WILL BREAK
func _on_Area2D_body_entered(body):
	get_tree().reload_current_scene()
