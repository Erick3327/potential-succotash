extends Node

var owner = null
var animation_player = null

func _ready():
    animation_player = $AnimationPlayer

func fire():
    if animation_player:
        animation_player.play("shoot")
    # Lógica de disparo específico en subclases

func reload():
    if animation_player:
        animation_player.play("reload")
    # Lógica de recarga específico en subclases
