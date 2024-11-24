extends Node2D
class_name SFX

@onready var pistaA : AudioStreamPlayer2D = $AudioA
@onready var pistaB : AudioStreamPlayer2D = $AudioB

var sonido_disparo = preload("res://icon.mp3")
var sonido_salto = preload("res://icon.mp3")

func Sonar(sonido):
	var pista = GetPistaInactiva()
	pista.stream = sonido
	pista.play()

func GetPistaInactiva() -> AudioStreamPlayer2D:
	return pistaA if pistaB.playing else pistaA
