extends Node

# Sistema básico multijugador usando ENet de Godot
var server = null
var client = null

func start_server():
    server = NetworkedMultiplayerENet.new()
    server.create_server(12345, 4) # Puerto 12345, máximo 4 jugadores
    get_tree().set_network_peer(server)

func connect_to_server(ip):
    client = NetworkedMultiplayerENet.new()
    client.create_client(ip, 12345)
    get_tree().set_network_peer(client)