class_name FirstScene

extends Control
## The first scene of the game.

## The amount of energy (ressource) owned by the player.
var energy: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	update_label()
	(get_node("Button") as Button).pressed.connect(_on_Button_pressed)

## Update the label with the current amount of energy.
func update_label() -> void:
	(get_node("Label") as Label).text = "Energy: %s" % energy

## Create energy.
func create_energy() -> void:
	energy += 1
	update_label()

## Create energy when the button is pressed.
func _on_Button_pressed() -> void:
	create_energy()
