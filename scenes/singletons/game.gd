class_name Game

extends Node
## The root node of the game.

## Singleton reference.
static var ref: Game

## Constructor
func _init() -> void:
	if not ref:
		ref = self
	else:
		queue_free()

## Path to the save file.
const SAVE_PATH:String = "user://save.tres"

## Main data object of the game.
var data:Data = load_data()

## Save the game.
func save_data() -> void:
	ResourceSaver.save(data, SAVE_PATH)

## Save the game when the node is freed.
func _exit_tree() -> void:
	save_data()

## Load the game.
func load_data() -> Data:
	if ResourceLoader.exists(SAVE_PATH):return load(SAVE_PATH)
	return Data.new()
