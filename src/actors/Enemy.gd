extends Actor

func _ready() -> void:
	set_physics_process(false)
	velocity.x=-enemy_speed[0]
	

func _on_StompDetector_body_entered(body: Node) -> void:
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return
	queue_free()	
	

func _physics_process(delta: float) -> void:
	velocity.y+=gravity*delta
	if is_on_wall():
		velocity.x*=-1.0
	velocity.y=move_and_slide(velocity,FLOOR_NORMAL).y

