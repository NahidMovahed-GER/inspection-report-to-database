# Systemlogik und Automatisierung  Digitale Bauwerksprüfung

## Ziel

Nicht nur Daten speichern, sondern ein System schaffen,  
das automatisch priorisiert, strukturiert und auswertbar ist.

---

## 1. Datenbank als zentrales Gedächtnis

Die Tabellen speichern fachliche Informationen getrennt:

- **schaden**  Technische Bewertung (S, V, D)
- **dokument**  Prüfkontext (Bauwerk, Datum, Prüfer)

Die Verbindung erfolgt über eine eindeutige ID (Foreign Key).

So wird Mehrfacherfassung vermieden und Daten bleiben konsistent.

---

## 2. Views als automatische Auswertung

### schaden_prioritaet
Berechnet automatisch:

Priorität = S + V + D

Sobald ein neuer Schaden erfasst wird, erscheint die berechnete Priorität sofort in der View.

### dokument_prioritaet
Verknüpft technische und organisatorische Informationen (JOIN).

Ergebnis: Eine lesbare, priorisierte Gesamtliste für Entscheidungsträger.

---

## 3. Live-Logik statt manuelle Excel-Auswertung

- Keine Medienbrüche (PDF  Excel)
- Keine doppelte Datenerfassung
- Keine manuelle Priorisierung
- Transparente, jederzeit reproduzierbare Auswertung

Die View zeigt immer den aktuellen Stand der Datenbank.

---

## 4. Erweiterung: Automatische Benachrichtigung (Konzept)

Das System kann durch ein Skript erweitert werden, das:

- Schäden mit hoher Priorität erkennt
- automatisch eine E-Mail an Verantwortliche sendet

Damit wird sichergestellt, dass kritische Schäden nicht übersehen werden.

---

## Kerngedanke

Ich baue keine digitalen Papierarchive,  
sondern strukturierte Systeme, die Entscheidungen unterstützen.
