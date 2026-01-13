extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_btn_peter_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world_peter.tscn") # Replace with function body.


func _on_btn_homer_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world_homer.tscn") # Replace with function body.

func _on_btn_bob_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world_bob.tscn")

func _on_btn_rick_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/world_rick.tscn")

	