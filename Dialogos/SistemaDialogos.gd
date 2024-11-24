extends Node

@onready var texto = $RichTextLabel
var sistema_dialogos = Dialogos.new()

var dialogo_actual = 0
var line_actual = 0
var esta_en_dialogo = false

func PlayDialogo(dialogo_numero : int):
	dialogo_actual = dialogo_numero
	texto.text = sistema_dialogos.dialogos[dialogo_actual][line_actual]

func _physics_process(delta: float) -> void:
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		esta_en_dialogo = true
		if line_actual < sistema_dialogos.dialogos[dialogo_actual].size()-1:
			line_actual += 1
			PlayDialogo(dialogo_actual)
		else:
			texto.text = "[center] Termino Dialogo"
		
