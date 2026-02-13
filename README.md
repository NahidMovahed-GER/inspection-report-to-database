# 🌉 Digitale Brücken-Prüfung  
## Vom DIN-1076-Prüfbericht zur automatischen Prioritätenliste  
**Docker · PostgreSQL · Datenmodellierung**

---

## Kurzbeschreibung
Dieses Projekt zeigt, wie technische Prüfberichte aus dem Brücken- und Ingenieurbau  
(z. B. nach DIN 1076) in strukturierte, auswertbare Daten überführt werden können.

Statt Schäden nur als langen Text in PDF-Dokumenten zu erfassen, werden sie in einer
Datenbank gespeichert und automatisch priorisiert.  
So entsteht eine objektive Entscheidungsgrundlage für Instandhaltung und Planung.

---

## Portfolio-Struktur

1. Management-Zusammenfassung (PDF)
2. Prozessdigitalisierung & DMS-Konzept
3. Systemlogik & Automatisierung (technische Umsetzung)

---
## Ausgangssituation
In klassischen Prüfberichten werden Schäden wie fehlende Nietköpfe oder Korrosionsstellen
als Freitext beschrieben.  
Die Bewertung (S / V / D) ist vorhanden, wird aber meist manuell gelesen und weiterverarbeitet.

Das führt zu:
- hohem Zeitaufwand
- fehlender Übersicht
- schwieriger Vergleichbarkeit zwischen Schäden

---

## Ziel des Projekts
- Prüfberichte **digital strukturieren**
- Schäden **zentral speichern**
- Prioritäten **automatisch berechnen**
- Entscheidungsprozesse **vereinfachen**

**Leitsatz:**  
> *Ich behandle Ingenieurwissen als Datenmodell – nicht als Handwerk.*

---

## Lösung (einfach erklärt)

### 1. Struktur statt Freitext
Ein exemplarischer Schaden (z. B. Schaden 169: fehlender Nietkopf) wird aus dem Text
in ein strukturiertes JSON-Format überführt.

### 2. Datenbank als zentrales System
Die Schadensdaten werden in einer PostgreSQL-Datenbank gespeichert:
- Schadensnummer
- Bauteil
- Ort
- Bewertung (S, V, D)

### 3. Automatische Priorisierung
Eine Datenbank-View berechnet aus der Bewertung automatisch eine Priorität:

```text
Priorität = S + V + D
```

So ist sofort sichtbar, welche Schäden zuerst bearbeitet werden müssen.

---

## Technischer Überblick

### Architektur (vereinfacht)

Prüfbericht (PDF / Text)  
↓  
Strukturierte Erfassung der Schäden  
↓  
PostgreSQL-Datenbank (relationale Speicherung)  
↓  
SQL-Views (automatische Prioritätsberechnung)  
↓  
Management-Übersicht / Entscheidungsgrundlage  

---

## KI-Komponente (Proof of Concept)

Im Ordner `src/ai` befindet sich eine exemplarische Textklassifikation
(`prototype_text_classification.py`).

Diese dient als **Proof of Concept**, um zu demonstrieren,
wie Prüfberichtstexte automatisiert analysiert und kategorisiert werden könnten.

Die KI-Komponente ist bewusst als Demonstrator ausgelegt
und nicht als produktionsreifes System implementiert.

Ziel ist die fachliche Einordnung von KI als unterstützendes Werkzeug –
nicht als Ersatz für ingenieurtechnische Bewertung.

---

### Eingesetzte Technologien

- **Docker**  
  Stellt die komplette Umgebung reproduzierbar mit einem Befehl bereit.

- **PostgreSQL**  
  Speichert die strukturierten Schadensdaten in relationaler Form.

- **SQL-Views**  
  Berechnen automatisch die Priorität (S + V + D) und erzeugen eine dynamische Auswertung.

---

Die technische Umsetzung ist bewusst schlank gehalten.  
Der Fokus liegt auf **Nachvollziehbarkeit, Wartbarkeit und Praxisnutzen**, nicht auf technischer Komplexität.

---

## Ergebnis
- Ein Schaden ist nicht mehr nur Text, sondern ein **digitaler Datensatz**
- Prioritäten sind **objektiv und sofort sichtbar**
- Das System ist **wiederholbar** und leicht erweiterbar

---

## Warum ist das relevant für den öffentlichen Sektor?
- Zeitersparnis bei der Auswertung von Prüfberichten
- Einheitliche, nachvollziehbare Priorisierung
- Saubere Datenbasis für Planung, Budgetierung und Kommunikation

---

## Projektfokus
Dieses Projekt ist kein reines Softwareprojekt, sondern ein **Digitalisierungsbeispiel**.
Es zeigt, wie Fachwissen, IT und Prozesse so verbunden werden, dass Entscheidungen schneller, transparenter und nachvollziehbar werden.

## Projekt-Dokumentation
📄 
- [01 – Kurz-Portfolio (PDF)](docs/Portfolio/01_Digitale_Brueckenpruefung_Portfolio.pdf)
- [02 – Prozessdigitalisierung und DMS](docs/Portfolio/02_Prozessdigitalisierung_und_DMS.md)
- [03 – Systemlogik und Automatisierung](docs/Portfolio/03_Systemlogik_und_Automatisierung.md)
- [04 – Projektmanagement_und_Workshops](docs/Portfolio/04_Projektmanagement_und_Workshops.md)
- [05 – Digitalisierung_und_KI_Use_Cases](docs/Portfolio/05_Digitalisierung_und_KI_Use_Cases.md
)

