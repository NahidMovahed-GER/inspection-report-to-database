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

# 📂 Portfolio-Struktur

Dieses Repository ist bewusst dreistufig aufgebaut:

### 1️⃣ Management-Ebene  
📄 [01_Digitale_Brueckenpruefung_Portfolio.pdf](docs/Portfolio/01_Digitale_Brueckenpruefung_Portfolio.pdf)

Kurze, visuelle Zusammenfassung für Entscheidungsträger.

---

### 2️⃣ Prozess-Ebene  
📘 [02_Prozessdigitalisierung_und_DMS.md](docs/Portfolio/02_Prozessdigitalisierung_und_DMS.md)

Beschreibung des IST-/SOLL-Prozesses und des DMS-Konzepts.

---

### 3️⃣ System-Ebene  
⚙️ [03_Systemlogik_und_Automatisierung.md](docs/Portfolio/03_Systemlogik_und_Automatisierung.md)

Technische Logik:
- Tabellenstruktur  
- JOIN-Logik  
- Prioritätsberechnung  
- View-Konzept  
- Automatisierungsansatz  

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
in ein strukturiertes Format überführt.

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
