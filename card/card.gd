extends Node2D


var type
var flipped = false

signal card_flipped()

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.texture = load("res://assets/graphics/back.png")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("mouse_left"):
		if type == "circle":
			$Sprite.texture = load("res://assets/graphics/circle.png")
		elif type == "diamond":
			$Sprite.texture = load("res://assets/graphics/diamond.png")
		elif type == "square":
			$Sprite.texture = load("res://assets/graphics/square.png")
		elif type == "triangle":
			$Sprite.texture = load("res://assets/graphics/triangle.png")
			
		flipped = !flipped
