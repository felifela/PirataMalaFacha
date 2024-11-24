extends Node2D

@onready  var timer : Timer = $Timer
@onready var area2D : Area2D = $Area2D

var jugador_en_area : bool = false

var vida = 5
var daño_que_da = 1

func _ready() -> void:
	Global.jefe = self

func _on_timer_timeout() -> void:
	if jugador_en_area:
		Global.jugador.daño(5)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Jugador"):
		body.daño(5)
		jugador_en_area = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	jugador_en_area = false

func daño(valor : float):
	print("dañar")
	vida -= valor
	#barra_vida.value -= valor
	if vida <= 0:
		print("murio")
