extends KinematicBody2D

enum Type {
	dioxygen,
	diazote
}



export(Type) var type = Type.dioxygen
export(float) var speed_modif = 3.5


var speed := Vector2.ZERO 

func _physics_process(delta: float) -> void:
	var collision : KinematicCollision2D = move_and_collide(speed)
	if collision:
#		$RayCast2D.cast_to= 50* speed.bounce(collision.normal)
		speed = speed.bounce(collision.normal)
		
func _ready() -> void:
	if type == Type.dioxygen:
		$circle.modulate = Color.red
	else:
		$circle.modulate = Color.blue
	$circle.visible = true

func get_type():
	return type

func start():
	var sign_ = -1 if randf() > 0.5 else 1
	var sign_2 = -1 if randf() > 0.5 else 1
	speed = Vector2(sign_ * rand_range(0.5,1),sign_2 * rand_range(0.5,1))* speed_modif

func stop():
	speed = Vector2.ZERO
