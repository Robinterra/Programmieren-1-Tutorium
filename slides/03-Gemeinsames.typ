#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Kontrollstrukturen (If-Else)",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

//TODO: Klären ob Javainstallationsanleitung nötig ist oder einfach später starten in Zukunft

= Organisatorisches
== Raumänderung
#[
  #set text(size: 1.2em)
  #align(horizon+center,
  [
    - Wir sind heute noch im SN 23.2
    - Ab nächster Woche im IZ 146
  ])
]

= Projekt aufsetzen
== Repository bekommen
 - Einloggen in Gitlab
#figure(
  image("figures/03_00_Project_overview.png", width: 70%),
  caption: [
    Projekt finden
  ],
)
#figure(
  image("figures/03_01_Project_url.png", width: 80%),
  caption: [
    Projekt Url kopieren
  ],
)

#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Ein Terminal euress Vertrauens öffnen
    - In das Verzeichnis wechseln, in dem ihr das Projekt haben wollt
    - Das Projekt klonen:
  ])
]
```bash
git clone git@gitlab.ibr.cs.tu-bs.de:vss/teaching/ws24/zt_p1/team_09.git
```
== Editor verwenden
#[
  #set text(size: 1.6em)
  #align(horizon+center,
  [
    Welchen Editor verwendet ihr?
  ])
]

#pagebreak()

#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    Es gibt viele Editoren, die ihr verwenden könnt.
    Ich verwende Visual Studio Code

    - Visual Studio Code
    - IntelliJ IDEA
    - Eclipse
    - Vim
    - Emacs
  ])
]\

= Setup des Projekts
== Der Start in der Programmierung
//In Java benötigen wir erstmal eine Start funktion, die main Funktion, erkläre in dieser slide wie wir die main funktion schreiben
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - In Java benötigen wir eine Startfunktion: Die main Funktion
    - Die main Funktion ist der Einstiegspunkt in unser Programm

    - Klassenname == Dateiname
  ])
]
```java
//Dateiname: Program.java
public class Program {
  public static void main(String[] args) {
    // Hier beginnt unser Programm
  }
}
```

#pagebreak()

== Java Programm Compilieren
//erkläre wie man ein Java Programm kompiliert und ausführt
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Java Programme werden kompiliert
    - Kompilieren: javac Dateiname.java

    - Ausführen: java Dateiname
    / *java Dateiname*: Ist auch der Name der Klasse, die die main Funktion enthält. Beim Ausführen wird der Dateityp weggelassen, also ohne .class oder .java
  ])
]

== Änderungen sichern (git)
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Nur (meistens) Text dateien werden in git gespeichert
    - Keine .class Dateien, dafür gibt es den .gitignore
    / *.gitignore*: ```bash
    .vscode/
    *.class
    ```
  ])
]

#pagebreak()

#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Dateien hinzufügen: `git add .`
    - Änderungen speichern: `git commit -m "Schreibt hier rein welche Änderungen ihr gemacht habt"`
    - Änderungen hochladen: `git push origin main`
    - origin ist der standard Name für den aktuellen Server
    - main ist der Name des Branches
  ])
]\

= Aufgabe
// Zeitslot 2: Kontrollstrukturen (If-Else)
// Ziel: Einführung in Kontrollstrukturen mit Bedingungen.
// Aufgabe:
// Implementiert eine einfache Logik, die überprüft, ob zwei Vektoren gleich sind (Vergleich der einzelnen Komponenten).
// Beginnt mit der Arbeit an 1D-Arrays: Speichert Vektoren als Arrays (int[] v1 = {1, 2}; int[] v2 = {3, 4};).
// Implementiert eine einfache Summenfunktion, die Arrays verarbeitet.
// Falls-Else-Strukturen prüfen, ob die Operationen erfolgreich waren oder nicht (z.B. Vektorlängen stimmen überein).
// Lernziel: Einfache Arrays und Kontrollstrukturen.

== Rechnen mit Vektoren und Matrizen

#[
  #align(horizon,
  [
    - Refactoring: Variablen als Arrays umschreiben, wenn nicht bereits geschehen
    - Berechne die Summe der Vektoren
    - Erstelle zwei if-else Statement das die länge der Vektoren überprüft einmal den if Zweig auslösen und den else Zweig auslösen
    - Gebe sowohl für den if Fall als auch den else Fall eine Nachricht aus
  ])
]
```java
    int[] v1 = {1, 2}; // Vektor 1 anlegen
    int[] v2 = {3, 4}; // Vektor 2 anlegen

    int[] v3 = {v1[0] + v2[0], v1[1] + v2[1]};
    if (v3[0] == 4 && v3[1] == 6) {
      System.out.println("Summe: (" + v3[0] + ", " + v3[1] + ")");
    }
```

== Ziel
// erkläre das Ziel, was nur ein Ausführbares Programm für erste ist und das man bereits selbst kompilieren kann, optional kann man bereits arrays verwenden und man hat bis zum 7. November Zeit
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Ziel: Bestehndes Programm refactoren
    - Simple Kontrollstrukturen verstehen
    - Basics in Git
    - bis zum 14. November
    - Unterstützung hier im Tutorium, im IZ146 oder Online
  ])
]

#pagebreak()

#[
  #set text(size: 1.6em)
  #align(horizon+center,
  [
    Happy Coding!
  ])
]\