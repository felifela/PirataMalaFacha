extends Node2D

@onready var raycast = $RayCast2D
@onready var linea = $Line2D

func ataque():
	linea.modulate = Color(1, 1, 1, 1)
	if raycast.is_colliding():
		var cuerpo_que_colisiona = raycast.get_collider()
		print("Jugador es dañado")

func _on_timer_timeout() -> void:
	linea.modulate = Color(1, 1, 1, 1)
	ataque()
	await get_tree().create_timer(2.0)
	linea.modulate = Color(1, 1, 1, 0)
