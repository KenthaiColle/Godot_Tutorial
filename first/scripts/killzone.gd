extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
		print("you died")
		Engine.time_scale = 0.5 #go half speed
		timer.start()
		body.get_node("CollisionShape2D").queue_free()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1 #go back to normal speed
	get_tree().reload_current_scene()
