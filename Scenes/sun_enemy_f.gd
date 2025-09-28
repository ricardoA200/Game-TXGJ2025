extends CharacterBody2D

const SPEED := 100
const LEFT_LIMIT := -100
const RIGHT_LIMIT := 100

var direction := 1
var start_position := Vector2.ZERO

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	start_position = global_position

func _physics_process(_delta: float) -> void:
	velocity.x = direction * SPEED
	move_and_slide()

	var distance = global_position.x - start_position.x
	if distance > RIGHT_LIMIT:
		direction = -1
		animated_sprite.flip_h = true
	elif distance < LEFT_LIMIT:
		direction = 1
		animated_sprite.flip_h = false
