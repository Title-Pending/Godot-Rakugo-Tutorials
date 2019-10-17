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
		$Switch/SpotLight.visible = !$Switch/SpotLight.visible
		anim($Switch/CSGMesh/AnimationPlayer, a)
		$CSGMesh_Cube/BlockAni.play ("switch_a")


		return

	if Input.is_action_just_pressed("switch_b"): 
		b = !b
		$Switch2/SpotLight2.visible = !$Switch2/SpotLight2.visible
		anim($Switch2/CSGMesh/AnimationPlayer, b)
		$CSGMesh_Cube/BlockAni.play ("switch_b")
		return
		
	if Input.is_action_just_pressed("switch_c"): 
		c = !c
		$Switch3/SpotLight3.visible = !$Switch3/SpotLight3.visible
		anim($Switch3/CSGMesh/AnimationPlayer, c)
		$CSGMesh_Cube/BlockAniC.play ("Move")
		#Note BlockAniC intergrates Bolck animation without an animation tree. 
		return
	
func anim(anim, value):
	if value:
		anim.play("On")
	else:
		anim.play("off")