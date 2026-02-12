# T2 – Prozessdigitalisierung & DMS-Konzept

## Ziel
Den IST-Prozess der Bauwerksprüfung analysieren und in einen strukturierten, digitalen SOLL-Prozess überführen.

---

## 1. Ausgangssituation (IST)

Ablauf der klassischen Bauwerksprüfung:

1. Erstellung des Prüfberichts als PDF
2. Versand per E-Mail
3. Manuelle Übertragung relevanter Daten in Excel
4. Manuelle Priorisierung (S + V + D)
5. Ablage in Dateiordnern

### Probleme

- Medienbruch (PDF → Excel)
- Doppelte Datenerfassung
- Versionskonflikte
- Keine automatische Priorisierung
- Eingeschränkte Nachvollziehbarkeit

---

## 2. Zielbild (SOLL)

Neuer digitaler Ablauf:

1. Strukturierte Erfassung der Schäden (Datensatz statt Freitext)
2. Speicherung in einer zentralen Datenbank
3. Automatische Prioritätsberechnung
4. Verknüpfung von Dokument und Schaden
5. Ablage im DMS mit Metadaten

---

## 3. Fachliches Datenmodell

Neue Tabelle: `dokument`

- bauwerksnummer
- pruefdatum
- pruefer
- schadens_id (Foreign Key)
- standort
- version
- erstellt_am

Beziehung:
Ein Dokument referenziert einen oder mehrere Schäden.

Referenzielle Integrität wird über Foreign Key sichergestellt.

---

## 4. Technische Umsetzung

Erweiterung der Datenbank um:

- Tabelle `dokument`
- View `dokument_prioritaet`

Die View verbindet:

dokument + schaden

und berechnet automatisch:

prioritaet = S + V + D

---

## 5. Validierung

Testfall:

- Schaden 169 wird angelegt
- Dokument wird mit schadens_id = 169 verknüpft
- View zeigt automatisch berechnete Priorität

Ergebnis:
Die Priorität wird korrekt berechnet und ist sofort sichtbar.

---

## 6. Mehrwert für den öffentlichen Sektor

- Keine Mehrfacherfassung
- Objektive Priorisierung
- Revisionssicherheit
- Nachvollziehbare Historie
- Skalierbar für viele Bauwerke

---

## Fazit

Der IST-Prozess wurde analysiert,
in ein strukturiertes Datenmodell überführt
und technisch validiert.

Das Projekt zeigt, wie Prozessanalyse,
Datenmodellierung und Digitalisierung
konkret umgesetzt werden können.
