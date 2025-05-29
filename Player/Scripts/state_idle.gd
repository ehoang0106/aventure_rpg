class_name State_Idle extends State

@onready var walk: State_Walk = $"../Walk"


# what happens when the player enters this state
func Enter() -> void:
	player.updateAnimation("idle")
	pass

# what happens when the player exits this state

func Exit() -> void:
	pass
	
#what happens during the the _process in this state?
func Process(_delta : float) -> State:
	if player.direction != Vector2.ZERO:
		return walk
	player.velocity = Vector2.ZERO
	
	return null
	
	
#what happens during the the _physics_process in this state?
func Physics(_delta : float) -> State:
	
	return null
	
func HandleInput(_even : InputEvent) -> State:
	
	return null
