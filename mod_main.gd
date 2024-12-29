extends Node


const AUTHORNAME_MODNAME_DIR := "Protectator-SwissFood"
const AUTHORNAME_MODNAME_LOG_NAME := "Protectator-SwissFood:Main"

var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""

# Before v6.1.0
# func _init(modLoader = ModLoader) -> void:
func _init(modLoader = ModLoader) -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(AUTHORNAME_MODNAME_DIR)
	translations_dir_path = mod_dir_path.plus_file("translations/")
	# Add translations
	modLoader.add_translation_from_resource(translations_dir_path.plus_file("swissfood_text.en.translation"))
	modLoader.add_translation_from_resource(translations_dir_path.plus_file("swissfood_text.fr.translation"))

func _ready() -> void:
	# Get the ContentLoader class
	var ContentLoader = get_node("/root/ModLoader/Darkly77-ContentLoader/ContentLoader")
	var content_dir = "res://mods-unpacked/Protectator-SwissFood/content_data/"
	var mod_log = "Protectator-SwissFood"

	# Add content. These .tres files are ContentData resources
	ContentLoader.load_data(content_dir + "swissfood_items.tres", mod_log)
