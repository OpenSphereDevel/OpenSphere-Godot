extends KinematicBody2D

#TUTORIAL USED FOR THIS: https://www.youtube.com/watch?v=wETY5_9kFtA&list=PL9FzW-m48fn2jlBu_0DRh7PvAt-GULEmd

#declares what the UP direction is for functions later on related to touching the floor
#this pretty much just declares that our game is a platformer and not a top-down game
const UP = Vector2(0, -1)

#constants for things like movement speed, gravity, jump height, etc.
const SPEED = 250
const GRAVITY = 15
const JUMP_HEIGHT = -600

#variable to store motion of ball sprite, does X and Y together
#access with motion.x and motion.y
var motion = Vector2()

#function for movement of ball sprite that is updated every frame (delta)
func _physics_process(delta):
	
	#sets "gravity" of player as constant downward motion
	#only happens when not colliding with the floor
	if !(is_on_floor()):
		motion.y += GRAVITY
	
	#sets motion based on actions defined in Project>Project Settings>Input Map
	#this allows you to easily map it to other things like gamepads or touchscreens
	if Input.is_action_pressed("ball_move_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ball_move_left"):
		motion.x = -SPEED
	#default case that makes motion 0 if we aren't pressing anything
	else:
		motion.x = 0
		
	#if the player is actually on the floor and presses the jump button it will make them jump
	if is_on_floor():
		if Input.is_action_just_pressed("ball_jump"):
			motion.y = JUMP_HEIGHT
			
	#function to close game if escape key pressed
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()

	#function inherited from KinBody2D that actually processes the motion we're setting with the keys above
	move_and_slide(motion, UP)
	pass


