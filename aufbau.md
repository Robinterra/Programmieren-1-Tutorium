# Ablauf und Aufgaben pro Zeitslot
## Zeitslot 1: Variablen und Datentypen
 - Ziel: Grundlagen der Programmierung (Variablen, Datentypen, einfache mathematische Operationen).
Aufgabe:
Definiert einzelne Variablen für zwei Vektoren (1D-Arrays sind noch nicht erlaubt) und rechnet ihre Summe, Differenz und Skalarprodukt.
Z.B. `int v1x = 1, v1y = 2, v2x = 3, v2y = 4;` und dann `int sumx = v1x + v2x; int sumy = v1y + v2y;`.
 - Lernziel: Umgang mit Variablen und einfachen Operationen.
## Zeitslot 2: Kontrollstrukturen (If-Else)
 - Ziel: Einführung in Kontrollstrukturen mit Bedingungen.
 - Aufgabe:
Implementiert eine einfache Logik, die überprüft, ob zwei Vektoren gleich sind (Vergleich der einzelnen Komponenten).
Beginnt mit der Arbeit an 1D-Arrays: Speichert Vektoren als Arrays (`int[] v1 = {1, 2}; int[] v2 = {3, 4};`).
Implementiert eine einfache Summenfunktion, die Arrays verarbeitet.
Falls-Else-Strukturen prüfen, ob die Operationen erfolgreich waren oder nicht (z.B. Vektorlängen stimmen überein).
 - Lernziel: Einfache Arrays und Kontrollstrukturen.
## Zeitslot 3: Schleifen
 - Ziel: Einführung in Schleifen für wiederholte Operationen.
 - Aufgabe:
Erweitert den Code so, dass ihr mit beliebig langen Vektoren arbeiten könnt (dynamische Vektorlängen, statt fixen 2D-Vektoren).
Nutzt Schleifen, um die Addition und das Skalarprodukt von Vektoren beliebiger Länge zu berechnen.
Beispiel: `for (int i = 0; i < v1.length; i++) { sum[i] = v1[i] + v2[i]; }`.
 - Lernziel: Verständnis von Schleifen und deren Anwendung auf Arrays.
## Zeitslot 4: Einführung in OOP (Klassen und Objekte)
 - Ziel: Einführung in OOP durch einfache Klassen.
 - Aufgabe:
Refactoring: Verwandelt die bisherigen Vektoroperationen in Methoden einer Vektor-Klasse.
Implementiert die Methoden `add()`, `subtract()`, und `dotProduct()` in der Vektor-Klasse.
Erstellt eine einfache Klasse Vektor, die die bisherigen Operationen (Addition, Subtraktion, Skalarprodukt) durchführt.
 - Lernziel: Objektorientierung, Methoden und einfache Klassenstrukturen.
## Zeitslot 5: Vererbung
 - Ziel: Einführung in Vererbung und Spezialisierung von Klassen.
 - Aufgabe:
Erstellt eine Unterklasse MatrixVektor, die für 2D-Matrizen spezifische Funktionen wie Matrix-Vektor-Multiplikation implementiert.
Refactoring: Verallgemeinert die Vektor-Klasse durch Vererbung für verschiedene Dimensionen (2D-Vektor, 3D-Vektor).
 - Lernziel: Grundlegendes Verständnis von Vererbung und Klassenhierarchien.
## Zeitslot 6: Schnittstellen (Interfaces)
 - Ziel: Einführung in Schnittstellen für Modularität und Flexibilität.
 - Aufgabe:
Implementiert ein Interface Berechenbar, das allgemeine Berechnungsmethoden wie `add()` und `dotProduct()` vorgibt.
Die Klassen Vektor und MatrixVektor sollen dieses Interface implementieren.
 - Lernziel: Verständnis von Schnittstellen und deren Einsatz zur Vereinheitlichung von Methoden.
## Zeitslot 7: Rekursion
 - Ziel: Einführung in rekursive Algorithmen.
 - Aufgabe:
Implementiert die Berechnung der Determinante einer Matrix rekursiv (nur für quadratische Matrizen).
Refactoring: Fügt eine Methode `determinant()` in der MatrixVektor-Klasse hinzu.
 - Lernziel: Rekursive Algorithmen und deren Anwendung auf mathematische Probleme.
## Zeitslot 8: Fehlerbehandlung (Exceptions)
 - Ziel: Einführung in Exception-Handling zur Verbesserung der Programmsicherheit.
 - Aufgabe:
Fügt Fehlerbehandlung hinzu, um z.B. das Hinzufügen von Matrizen unterschiedlicher Größen oder das Berechnen der Determinante nicht-quadratischer Matrizen zu verhindern.
Refactoring: Nutzt Exceptions, um den Code robuster zu machen.
 - Lernziel: Fehlerbehandlung durch Exceptions.
## Zeitslot 9: Testen
 - Ziel: Einführung in Testen mit JUnit.
 - Aufgabe:
Schreibt Tests für die wichtigsten Operationen (Vektoraddition, Skalarprodukt, Determinantenberechnung).
Implementiert JUnit-Tests für die Methoden `add()`, `subtract()`, `dotProduct()`, und `determinant()`.
 - Lernziel: Testen von Programmen und automatisierte Tests.
## Zeitslot 10: Abschluss und Optimierung
 - Ziel: Finales Refactoring und Optimierung.
 - Aufgabe:
Führt ein letztes Refactoring durch, um den Code zu optimieren (z.B. Optimierung der Matrizenoperationen).
Bereitet eine kurze Präsentation des Projekts vor, in der die Teams ihre Lösungen und Herausforderungen vorstellen.
 - Lernziel: Optimierung und Vorbereitung auf die finale Abgabe.