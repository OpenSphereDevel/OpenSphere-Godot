#comes from godot tutorial on movement and rotation, but without the movement part
extends Sprite

#rotation speed constant
export (float) var ROTATION_SPEED = 5.5

var velocity = Vector2()
var rotation_dir = 0

#gets input from user controls, rotates based on left/right direction pressed
func get_input():
    rotation_dir = 0
    velocity = Vector2()
    if Input.is_action_pressed('ball_move_right'):
        rotation_dir += 1
    if Input.is_action_pressed('ball_move_left'):
        rotation_dir -= 1

#gonna be honest, no fucking idea how this works, i just know it does so im happy
func _physics_process(delta):
    get_input()
    rotation += rotation_dir * ROTATION_SPEED * delta
