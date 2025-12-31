# ==============================================================================
# Název: FpsLabel.gd
# Popis: Skript pro uživatelské rozhraní (UI), který v reálném čase 
#        zobrazuje aktuální počet snímků za sekundu (FPS).
# Autor: Lubomír Tomandl - Angry Developer Studio
# Verze: 1.0
# ==============================================================================

extends Label

# Funkce volaná při prvním vstupu uzlu do stromu scény
func _ready() -> void:
	# Inicializace textu při spuštění, aby label nebyl prázdný
	text = "FPS: 0"

# Funkce volaná v každém snímku hry. 'delta' je čas od předchozího snímku
func _process(_delta: float) -> void:
	# Získáme aktuální FPS z engine, převedeme na řetězec a aktualizujeme text labelu
	# Engine.get_frames_per_second() vrací průměrný počet snímků za poslední vteřinu
	text = "FPS: " + str(Engine.get_frames_per_second())
