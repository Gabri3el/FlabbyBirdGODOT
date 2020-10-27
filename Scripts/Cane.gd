extends Node2D

export var rap = -400
var scene 
func _ready():
	scene = get_tree().get_current_scene()
	set_process(true)

func _process(delta):
	if scene.status == scene.PLAYING:
		set_pos(get_pos() + Vector2(rap * delta,0))
	if get_pos().x <-100:
		print("destruido")
		queue_free()
	


func _on_Area2D_body_enter( body ):
	if body.get_name() == "Flabby":
		scene.kill()



func _on_pontos_body_enter( body ):
	print("pontuou")
	scene.pontuar()


