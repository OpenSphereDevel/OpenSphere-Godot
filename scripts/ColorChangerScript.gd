extends Area2D

#storing colors here for future use
var red = Color(1,0,0,1)
var green = Color(0,1,0,1)
var blue = Color(0,0,1,1)
var yellow = Color(1,1,0,1)

#sets sprite texture color to be certain color on launch
func _ready():
	get_node("ColorChangerSprite").set_self_modulate(red)

#if the player touches this, then change player color to its color
func _on_ColorChanger_body_entered(body):
	if body.get_name() == "Player":
		get_tree().get_root().get_node("/root/WorldNode2D/Player").get_node("BallSprite").set_self_modulate(get_node("ColorChangerSprite").get_self_modulate())
