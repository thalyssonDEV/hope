extends ProgressBar
class_name HealthBar

@onready var timer = $Timer
@onready var damage_bar = $DamageBar
@onready var player: Player = get_parent()

var health = 100 : set = _set_health

var approaching = false;

func _process(delta):
	if approaching:
		var _diff = abs(damage_bar.value - health)
		var _sp = _diff/10;
		damage_bar.value = move_toward(float(damage_bar.value), float(health), _sp)
		if _diff < 5:
			damage_bar.value = health;
			approaching = false;
		
func _set_health(new_health):
	var prev_health = health
	print("Vida anterior: ", prev_health)
	health = min(max_value,new_health)
	value = health
	
	if health <= 0:
		pass
	
	damage_bar.value = prev_health
	if health < prev_health:
		timer.start()
	else:
		pass
		#damage_bar.value = health
			
func init_health(_health):
	print("Executando init_health")
	health = _health
	max_value = health
	value = health
	damage_bar.max_value = health
	damage_bar.value = health


func _on_timer_timeout():
	approaching = true;
	#damage_bar.value = health
