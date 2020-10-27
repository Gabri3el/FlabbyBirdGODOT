extends Node2D

onready var Flabby = get_node("Flabby")
onready var replay = get_node("canes/Timer")
onready var label = get_node("Node2D/Control/Label")


var pontos = 0 
var status = 1 

const PLAYING = 1
const LOSING =  2 

func _ready():

	pass

func kill():
	Flabby.apply_impulse(Vector2(0,0), Vector2(-1000,0))
	get_node("AnimationPlayer").stop()
	status = LOSING
	replay.start()
	get_node("somHit").play()
	
	
func pontuar():
	pontos += 1
	label.set_text(str (pontos))
	get_node("somScore").play()

	


func _on_Timer_timeout():
	get_tree().reload_current_scene()
