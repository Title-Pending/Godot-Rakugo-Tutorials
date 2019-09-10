extends Spatial

var a = false
var b = false
var c = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_just_pressed("switch_a"): 
		a = !a
		anim($Switch/CSGMesh/AnimationPlayer, a)
		return

	if Input.is_action_just_pressed("switch_b"): 
		b = !b
		anim($Switch2/CSGMesh/AnimationPlayer, b)
		return
		
	if Input.is_action_just_pressed("switch_c"): 
		c = !c
		anim($Switch3/CSGMesh/AnimationPlayer, c)
		return
	
func anim(anim, value):
	if value:
		anim.play("On")
	else:
		anim.play("off")