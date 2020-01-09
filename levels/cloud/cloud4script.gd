extends Node2D

func _win_game():
	get_tree().quit()

func _ready():
	get_node("Player").set_color(Color(1,0,0,1))
	get_node("LeftWall").set_color(Color(0.5,0.5,0.5,1))
	get_node("RightWall").set_color(Color(0.5,0.5,0.5,1))
	get_node("Ceiling").set_color(Color(0.5,0.5,0.5,1))
	get_node("Platform").set_color(Color(0.5,0.5,0.5,1))
	get_node("Platform2").set_color(Color(0.5,0.5,0.5,1))
	get_node("Platform3").set_color(Color(0.5,0.5,0.5,1))
	get_node("Platform4").set_color(Color(1,1,0,1))
	get_node("Platform5").set_color(Color(0,0,1,1))
	get_node("ColorChanger").set_color(Color(1,1,0,1))