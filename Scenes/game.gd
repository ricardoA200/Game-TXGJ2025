extends Node2D

@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	HUD.visible = true
	HUD.connect_to_player(player)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lava_body_entered(body):
	if body == player:
		player.take_damage(100)
		print("awwww it burns")
	print("lava entered")
	pass # Replace with function body.

func _on_door_body_entered(body):
	if body == player:
		get_tree().change_scene_to_file("res://Scenes/boss_room.tscn")
		print("made it")
	pass # Replace with function body.
