# ==============================================================================
# Název: Main.gd
# Popis: Hlavní řídicí skript scény, který spravuje životní cyklus aplikace 
#        a globální vstupy (např. ukončení hry).
# Autor: Lubomír Tomandl - Angry Developer Studio
# Verze: 1.0
# ==============================================================================

extends Node3D

# Funkce volaná při prvním vstupu uzlu do stromu scény
func _ready() -> void:
	# Zde inicializujte logiku hry po načtení scény
	pass 

# Funkce volaná v každém snímku hry. 'delta' je čas od předchozího snímku.
func _process(_delta: float) -> void:
	# Zde provádějte operace, které vyžadují aktualizaci každý snímek
	pass
	
# Zpracování vstupů, které nebyly zachyceny uživatelským rozhraním (GUI)
func _unhandled_input(_event: InputEvent) -> void:
	# Ukončení hry při stisku klávesy ESC (předdefinovaná akce "ui_cancel")
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
