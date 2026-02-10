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

## Technischer Überblick (bewusst einfach)
- **Docker**  
  Stellt die komplette Umgebung reproduzierbar mit einem Befehl bereit.

- **PostgreSQL**  
  Speichert die strukturierten Schadensdaten.

- **SQL-View**  
  Erzeugt automatisch eine Prioritätenliste ohne manuelle Auswertung.

Die technische Umsetzung ist bewusst schlank gehalten, um den Fokus auf
Nachvollziehbarkeit und Praxisnutzen zu legen.

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
Dieses Projekt ist kein reines Softwareprojekt, sondern ein **Digitalisierungsbeispiel**:
Es zeigt, wie Fachwissen, IT und Prozesse sinnvoll zusammengeführt werden können.
