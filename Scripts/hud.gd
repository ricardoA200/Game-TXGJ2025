extends CanvasLayer

@onready var health_bar: TextureProgressBar = $HealthBar
@onready var dashIcon: Sprite2D = $DashIcon
@onready var spearIconAvailable = $SpearIcon
@onready var spearIconEmpty = $EmptySpear

func connect_to_player(player):
	player.health_change.connect(update_health)
	player.dashUp.connect(update_dash)
	player.spearThrown.connect(update_spear)
	

func update_health(new_health: int):
	health_bar.value = new_health
func update_dash(available):
	dashIcon.visible = available
func update_spear(thrown):
	if thrown: 
		spearIconAvailable.visible = false
		spearIconEmpty.visible = true
	else:
		spearIconAvailable.visible = true
		spearIconEmpty.visible = false
