extends Sprite

#storing color variables here for future use
#color object is R,G,B,Opacity
#these can also be used in if statements when checking color!!!
var grey = Color(0.5,0.5,0.5,1)
var red = Color(1,0,0,1)
var green = Color(0,1,0,1)
var blue = Color(0,0,1,1)
var yellow = Color(1,1,0,1)

func _ready():
	set_self_modulate(grey)
