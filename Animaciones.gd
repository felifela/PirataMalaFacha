extends Node2D

var jugador
@onready var animacion = $AnimatedSprite2D

func Defenza():
	jugador.defendido = true
	animacion.play("Baile Carnavalsito")

func _on_animated_sprite_2d_animation_finished() -> void:
	if animacion.animation == "Baile Carnavalsito":
		print("Termino el Baile")
