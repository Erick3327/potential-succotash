extends KinematicBody

var weapons = []
var current_weapon = 0

func _ready():
    # Instancia las armas y las agrega al jugador
    var pistol = preload("res://src/weapons/pistol.tscn").instance()
    var rifle = preload("res://src/weapons/rifle.tscn").instance()
    var shotgun = preload("res://src/weapons/shotgun.tscn").instance()
    weapons = [pistol, rifle, shotgun]
    add_child(pistol)
    pistol.owner = self

func _input(event):
    if event.is_action_pressed("shoot"):
        weapons[current_weapon].fire()
    if event.is_action_pressed("reload"):
        weapons[current_weapon].reload()
    if event.is_action_pressed("next_weapon"):
        switch_weapon()

func switch_weapon():
    weapons[current_weapon].hide()
    current_weapon = (current_weapon + 1) % weapons.size()
    weapons[current_weapon].show()