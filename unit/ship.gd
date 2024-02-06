extends Node2D

var speed = 3.0
var shoot_timer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var is_right = false
	if Input.is_action_pressed("ui_right"):
		position.x += speed
		is_right = true
	if !is_right and Input.is_action_pressed("ui_left"):
		position.x -= speed
	var is_down = false
	if Input.is_action_pressed("ui_down"):
		position.y += speed
		is_down = true
	if !is_down and Input.is_action_pressed("ui_up"):
		position.y -= speed
	if shoot_timer < Time.get_ticks_msec() and Input.is_action_pressed("ui_accept"):
		shoot_timer = Time.get_ticks_msec()+1000
		print("pew")
