class_name State extends Node

static var player: Player 

func _ready() -> void:
	pass
	

# what happens when the player enters this state
func Enter() -> void:
	pass

# what happens when the player exits this state

func Exit() -> void:
	pass
	
#what happens during the the _process in this state?
func Process(_delta : float) -> State:
	
	
	return null
	
	
#what happens during the the _physics_process in this state?
func Physics(_delta : float) -> State:
	
	return null
	
func HandleInput(_even : InputEvent) -> State:
	
	return null
