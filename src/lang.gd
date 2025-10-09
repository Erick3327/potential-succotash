extends Node

var translations = {}
var current_language = "en"

func _ready():
    load_language(current_language)

func load_language(lang):
    var file = File.new()
    if file.file_exists("res://locales/%s.json" % lang):
        file.open("res://locales/%s.json" % lang, File.READ)
        translations = parse_json(file.get_as_text())
        file.close()

func tr(key):
    return translations.get(key, key)