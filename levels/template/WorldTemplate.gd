extends Node2D
#this script handles worldly-things like setting colors of platforms, action when win, etc.

#put the next level to load here upon player touching finish
func _win_game():
	get_tree().reload_current_scene()
	
#put color-definition crap here for child nodes for when level loads up
#also put resets of swinging doors here so upon reload it resets them to "unswung"
func _ready():
	get_node("Platform").set_color(Color(0.5,0.5,0.5,1))