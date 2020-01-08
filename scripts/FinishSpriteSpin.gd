extends Sprite

var velocity = Vector2()
var rotation_dir = 0

#gonna be honest, no fucking idea how this works, i just know it does so im happy
func _physics_process(delta):
	var rotation_dir = 0
	velocity = Vector2()
	rotation_dir += 1
	rotation += rotation_dir * 8 * delta
