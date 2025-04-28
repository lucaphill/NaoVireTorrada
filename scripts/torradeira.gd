extends Node2D
const SPEED = 40

var direction = 1

@onready var ray_castesquerda: RayCast2D = $RayCastesquerda
@onready var ray_castdireita: RayCast2D = $RayCastdireita
@onready var sprite_2d: Sprite2D = $Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if ray_castdireita.is_colliding():
		direction = -1
		sprite_2d.flip_h = false
		
	if ray_castesquerda.is_colliding():
		direction = 1
		sprite_2d.flip_h = true
	position.x += direction * SPEED * delta;
	
