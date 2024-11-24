extends Node2D

func _ready() -> void:
	SistemaCutscene.animacion = $IslaRecuerdo/AnimationPlayer
	SistemaCutscene.jugador = $Jugador
	SistemaCutscene.titere = $IslaRecuerdo/Path2D/PathFollow2D/Titere
	SistemaCutscene.camara_titere = SistemaCutscene.titere.get_node("Camera2D")
	SistemaCutscene.camara_jugador = SistemaCutscene.jugador.get_node("Camera2D")
	SistemaCutscene.Recuerdo1()
