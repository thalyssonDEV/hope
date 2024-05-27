extends CharacterBody2D
class_name Player

const SPEED = 150.0
const JUMP_VELOCITY = -300.0

## Quantidade de pontos de vida.
var hp: int = 100;
var direction
@onready var healthBar: HealthBar = get_node("Healthbar")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animation:AnimatedSprite2D = $Sprite
var inv:Inv = preload("res://inventory/inventy_player.tres")

func _ready():
	Global.playernode = self
	hp = Global.hp
	print("Meu HP se tornou: %s." % [hp])
	healthBar.init_health(hp)
	
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		animation.play("jump")
	
	var can_move = !Global.uiNode.visible 
	# Handle jump.
	if can_move:
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if hp <= 0:
		direction = null
		velocity.y = 0
	else:
		direction = Input.get_axis("left", "right")

	if direction and can_move:
		velocity.x = direction * SPEED
		animation.play("run")
		if direction > 0:
			animation.flip_h = false
		elif direction < 0:
			animation.flip_h = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation.play("idle")

	move_and_slide()
	
	# Atualizar informação de HP na GLobal
	Global.hp = hp
	
func player():
	pass

func collect(item):
	inv.insert(item)
	
## Função responsável por calcular o dano recebido.
func takeDamage(amount):
	healthBar._set_health(hp - amount)
	hp -= amount;
	if hp <= 0:
		Global.resete_inventario()
		await get_tree().create_timer(2).timeout
		get_tree().change_scene_to_file("res://scenes/game_over.tscn")
		Global.hp = 100
