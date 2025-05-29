class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle: State_Idle = $"../Idle"

# what happens when the player enters this state
func Enter() -> void:
	player.updateAnimation("walk")
	pass

# what happens when the player exits this state

func Exit() -> void:
	pass
	
#what happens during the the _process in this state?
func Process(_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
	player.velocity = player.direction * move_speed
	
	if player.setDirection():
		player.updateAnimation("walk")
		
	return null
	
	
#what happens during the the _physics_process in this state?
func Physics(_delta : float) -> State:
	
	return null
	
func HandleInput(_even : InputEvent) -> State:
	
	return null
