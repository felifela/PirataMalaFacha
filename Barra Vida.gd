extends Control

@onready var barra_vida : TextureProgressBar = $TextureProgressBar
var vida : int = 5

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		daño(1)

func daño(valor : float):
	print("dañar")
	vida -= valor
	barra_vida.value -= valor
	if vida <= 0:
		print("murio")
