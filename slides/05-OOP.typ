#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Einführung in die Objektorientierte Programmierung",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Klasse und Objekte
== Was ist eine Klasse?

#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Eine Klasse ist eine Schablone für Objekte
    - Wie Keksausstecher für Kekse
  ])
]
```java
public class Keks {
    // Eigenschaften
    public String Belag;
    public int Groesse;
}
```

#pagebreak()

#[
  #align(horizon,
  [
    Der Konstruktor
    - Der Konstruktor ist das ausstechen des Kekses im Teig
    - Womit gemeint ist, dass der Kontruktor ein Objekt im Speicher anlegt
  ])
]
```java
public class Keks {
    public String Belag;
    public int Groesse;
    // Konstruktor
    public Keks(String belag, int groesse) {
        this.Belag = belag;
        this.Groesse = groesse;
    }
}
```

#pagebreak()

#[
  #align(horizon,
  [
    Keyword static
    - Das Keyword static bedeutet, dass die Methode oder Variable nicht an ein Objekt gebunden ist
    - Wie zum Beispiel das der Keksausstecher Rostig oder HatTeigreste ist
  ])
]
```java
public class Keks {
    public static bool Rostig = false;
    public static bool HatTeigreste = false;
}
```

#pagebreak()

#[
  #align(horizon,
  [
    Kekse nun ausstechen
    - Ein Objekt wird aus einer Klasse erzeugt
    - Ein Objekt ist eine Instanz einer Klasse
  ])
]
```java
public static void main(String[] args) {
    Keks zartbitterKeks = new Keks("Zartbitter Schokolade", 5);
    Keks weißerKeks = new Keks("Weiße Schokolade", 3);
}
```

#pagebreak()

#[
  #align(horizon,
  [
    Null Referenz oder eher die nicht Existenz eines Kekses
    - Eine Referenz kann auch null sein
    - Bedeutet, dass kein Keks existiert
    - Fehleranfällig (NullPointerException)
  ])
]
```java
public static void main(String[] args) {
    Keks zartbitterKeks = null;
    String belag = zartbitterKeks.Belag; // NullPointerException
    System.out.println(belag);
}
```

= Aufgabe (Refactoring)
//Einführung in OOP (Klassen und Objekte)
//Ziel: Einführung in OOP durch einfache Klassen.
//Aufgabe:
//Refactoring: Verwandelt die bisherigen Vektoroperationen in Methoden einer Vektor-Klasse.
//Implementiert die Methoden add(), subtract(), und dotProduct() in der Vektor-Klasse.
//Erstellt eine einfache Klasse Vektor, die die bisherigen Operationen (Addition, Subtraktion, Skalarprodukt) durchführt.
//Lernziel: Objektorientierung, Methoden und einfache Klassenstrukturen.

== Vektor Klasse
#align(horizon,
[
  - Erstellt eine Klasse Vektor
  - Wählt Eigenschaften für die Klasse
  - Wählt einen passenden Konstruktor
  - Die Klasse soll die Methoden add(), subtract() und dotProduct() enthalten
  - Erweitert die Klasse um Methoden wie Skalarprodukt, Länge, etc.
])

== Matrix Klasse
#align(horizon,
[
  - Erstellt eine Klasse Matrix
  - Wählt Eigenschaften für die Klasse
  - Wählt einen passenden Konstruktor
  - Die Klasse soll die Methoden add(), subtract() und multiply() enthalten
  - Erweitert die Klasse um Methoden wie Determinante, Inverse, etc.
])

#pagebreak()

#[
  #set text(size: 1.6em)
  #align(horizon+center,
  [
    Happy Coding!
  ])
]\