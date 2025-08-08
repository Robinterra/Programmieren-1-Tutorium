#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Interfaces",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Gemeinsame Schnittstellen
== Methoden

#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Eine Schnittstelle ist eine Sammlung von Methoden
    - Die gemeinsamkeiten von Klassen zusammenfasst
    - Jede Klasse kann eigene Implementierung haben
  ])
]
#pagebreak()
```java
public interface Bewegung {
    void move();
}
public class Drohne implements Bewegung {
    public void move() {
        System.out.println("Fliegen");
    }
}
public class Rover implements Bewegung {
    public void move() {
        System.out.println("Fahren");
    }
}
```

= Aufgabe (Refactoring)
//Ziel: Einführung in Schnittstellen für Modularität und Flexibilität.
//Aufgabe:
//Implementiert ein Interface Berechenbar, das allgemeine Berechnungsmethoden wie add() und dotProduct() vorgibt.
//Die Klassen Vektor und Matrixsollen dieses Interface implementieren.
//Lernziel: Verständnis von Schnittstellen und deren Einsatz zur Vereinheitlichung von Methoden.

== Vektor und Matrix
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Implementiert für unsere Vektor und Matrix getrennte Interfaces für deren Methoden
    - Vektor: add(), dotProduct()
    - Matrix: add(), multiply()
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