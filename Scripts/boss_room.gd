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


func _on_audio_stream_player_finished():
	$AudioStreamPlayer.play()
	pass # Replace with function body.
