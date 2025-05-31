extends CharacterBody2D

const GRAVITY : int = 4200
const JUMP_SPEED : int = -1600

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	if is_on_floor():
		if Input.is_action_pressed("Jump"):
			velocity.y = JUMP_SPEED
		elif Input.is_action_pressed("Slide"):
			$AnimatedSprite2D.play("SlideAnim")
		else:
			$AnimatedSprite2D.play("RunAnim")
	else:
		$AnimatedSprite2D.play("JumpAnim")
		
	move_and_slide()
