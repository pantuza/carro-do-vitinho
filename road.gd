extends Sprite

onready var player = get_node("../Vitinho")
var _xpos = 0

func _ready():
    set_process(true)

func _process(delta):
    _xpos -= player.current_speed * delta
    set_region_rect(Rect2(_xpos, 0, 640, 960))