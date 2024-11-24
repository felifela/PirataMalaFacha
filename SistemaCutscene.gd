extends Node

var animacion
var jugador
var titere
var camara_titere
var camara_jugador

func Recuerdo1():
	get_tree().paused = true
	animacion.play("Recuerdo1")
	camara_titere.make_current()
	await animacion.animation_finished
	camara_jugador.make_current()
	get_tree().paused = false
