extends Spatial

var a = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_pressed("switch_a"): 
		$Switch/CSGMesh/AnimationPlayer.play("On")
		
	if  a == 1 and Input.is_action_pressed ("switch_a"):
		$Switch/CSGMesh/AnimationPlayer.play("off")

	if Input.is_action_pressed("switch_b"): 
		$Switch2/CSGMesh/AnimationPlayer.play("On")
	if Input.is_action_pressed("switch_c"): 
		$Switch3/CSGMesh/AnimationPlayer.play("On")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
