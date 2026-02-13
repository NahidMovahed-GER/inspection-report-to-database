# Schritt 1: Wir erstellen eine "Sortier-Regel" (Funktion)
def schaden_sortieren(text):
    # Alles in Kleinbuchstaben umwandeln, damit die Suche einfacher ist
    text = text.lower()

    # Wir suchen nach bestimmten Schlagworten:
    if "riss" in text:
        return "Kategorie: Rissbildung"
    
    elif "korrosion" in text:
        return "Kategorie: Korrosion (Rost)"
    
    elif "niet" in text:
        return "Kategorie: Verbindungsschaden"
    
    else:
        # Wenn kein Schlagwort passt
        return "Kategorie: Unbekannt (Bitte manuell prüfen)"

# --- Anwendung ---

# Ein Beispiel-Satz aus einem Prüfbericht
bericht_text = "An der Hauptträgersteife fehlen zwei Nietköpfe."

# Wir lassen den Computer den Text einsortieren
ergebnis = schaden_sortieren(bericht_text)

# Das Ergebnis anzeigen
print("Der Computer sagt:", ergebnis)
