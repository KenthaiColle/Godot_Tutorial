extends Area2D

#Unique name makes it so var can access it globally without needing path. But you can only use it on the same scene.
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
	
	#Coin sounds keeps playing eventhough obj is deleted as it's in the animation player
	
