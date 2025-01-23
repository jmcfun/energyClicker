extends TextureButton

func _gui_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_click"):
		_shrink()
		($AudioStreamPlayer as AudioStreamPlayer).play()
	elif event.is_action_released("left_click"):
		_expand()


func _shrink() -> void:
	var tween: Tween = create_tween()
	tween.tween_property(self, "scale", Vector2(0.95, 0.95), 0.1)
	 
func _expand() -> void:
	var tween: Tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1.05, 1.05), 0.1)
	tween.tween_property(self, "scale", Vector2(1, 1), 0.1)
