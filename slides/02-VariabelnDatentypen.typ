#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Variablen und Datentypen",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Organisatorisches
== Wiederholung von letzter Woche
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    Für die, die letzte Woche nicht da waren
    - Semesterprojekt: Matrizen- und Vektorrechner

    - Findet euch in kleinen Teams zusammen
    - Wir arbeiten mit Git und Gitlab: https://gitlab.ibr.cs.tu-bs.de
  ])
]
/ *IBR Gitlab Repo*: Zum anlegen des Gitlab Repo, benötigen wir euere y-Nummern als Team. Diese könnt ihr uns per Mail schicken. Mail: dandrea\@ibr.cs.tu-bs.de


= Variablen und Datentypen
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

//liste einmal die Keywords auf, static public, class, void und sage das diese für den moment zur seite gelegt werden und zu einem gegeben Zeitpunkt erklärt werden
#[
  #align(horizon,
  [
    - Ganz viele Fragezeichen:
    ```java
    public  static  private  protected  class
    ```
    - Was ist das?!?

    - Diese werden zu einem späteren Zeitpunkt erklärt
    - Für den Moment ignorieren

  ])
]

== Variablen
//erkläre was eine Variable ist und wie man eine Variable deklariert
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Eine Variable ist ein Speicherplatz für Daten
    - Eine Variable wird deklariert mit: Datentyp Variablenname;
    - Der Datentyp gibt an, welche Art von Daten in der Variable gespeichert werden
  ])
]
```java
String output; // Deklaration
output = "Hallo Welt"; // Zuweisung
System.out.println(output); // Zugriff
```
== Primitive Datentypen
//erkläre die primitiven Datentypen und liste sie auf mit java beispiel
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Primitive Datentypen sind einfache Datentypen
    - Zum Beispiel:
    Ganzzahlen $ZZ$ mit int, Kommazahlen $QQ$ mit double, Wahrheitswerte mit boolean und einzelne Zeichen mit char
  ])
]
```java
int nummer = 42;
double pi = 3.14159;
boolean wahrheitswert = true;
char zeichen = 'A';
```
== Referenz Datentypen
//erkläre die Referenz Datentypen und liste sie auf mit java beispiel
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Referenz Datentypen sind komplexere Datentypen
    - Zum Beispiel:
    Zeichenketten mit String, Arrays (Vektoren, Matrizen) und Klassen
  ])
]
```java
String text = "Hallo Welt";
int[] zahlen = {1, 2, 3, 4, 5};
```

== Operationen mit Variablen mit Zahlen
//erkläre die Operationen auf Variablen mit Zahlen, zum beispiel auf Addition, Subtraktion, Multiplikation und Division
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Operationen auf Variablen sind möglich
    - Werte können überschrieben werden
    - Zum Beispiel:
    Addition, Subtraktion, Multiplikation und Division
  ])
]
```java
int a = 5, b = 3;
int result = ((a + b) * 2 - 1) / 5;
result = result + 1;
System.out.println(result); // result == 4
```
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
= Aufgabe
// Zeitslot 1: Variablen und Datentypen
// Ziel: Grundlagen der Programmierung (Variablen, Datentypen, einfache mathematische Operationen).
// Aufgabe:
// Definiert einzelne Variablen für zwei Vektoren (1D-Arrays sind noch nicht erlaubt) und rechnet ihre Summe, Differenz und Skalarprodukt.
// Z.B. int v1x = 1, v1y = 2, v2x = 3, v2y = 4; und dann int sumx = v1x + v2x; int sumy = v1y + v2y;.
// Lernziel: Umgang mit Variablen und einfachen Operationen.

== Rechnen mit Vektoren und Matrizen
// schreibe ein kleines java program, das zwei vektoren addiert, subtrahiert und das skalarprodukt berechnet, erkläre was ein Skalarprodukt ist
#[
  #align(horizon,
  [
    - Schreibe ein kleines Java Programm, das zwei Vektoren addiert, subtrahiert
    $ mat(1;2;) + mat(3;4;) = mat(1 + 3;2 + 4;) = mat(4;6;) $
    $ mat(3;4;) - mat(1;2;) = mat(3 - 1;4 - 2;) = mat(2;2;) $
    - Das Skalarprodukt von 2 Vektoren berechnen, was die Summe der Produkte der Komponenten
    $ mat(1;2;) circle.filled.small mat(3;4;) = 1*3 + 2*4 = 11 $
  ])
]
#pagebreak()
#[
  #align(horizon,
  [
    - Ideen zur Implementierung
    ```java
    int vektor1_x = 1, vektor1_y = 2; // Vektor 1 anlegen

    int vektor2_x = 3, vektor2_y = 4; // Vektor 2 anlegen

    int vektor3_x = vektor1_x + vektor2_x, // Summe der oberen Zeile
    vektor3_y = vektor1_y + vektor2_y; // Summe der unteren Zeile

    System.out.println("Summe: (" + vektor3_x + ", " + vektor3_y + ")");
    ```
  ])
]

== Ziel
// erkläre das Ziel, was nur ein Ausführbares Programm für erste ist und das man bereits selbst kompilieren kann, optional kann man bereits arrays verwenden und man hat bis zum 7. November Zeit
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Ziel: Ein ausführbares Programm
    - Ihr könnt bereits selbst kompilieren
    - Optional: Arrays verwenden
    - bis zum 7. November
    - Unterstützung hier im Tutorium, im IZ146 oder Online
  ])
]


== Was sind Arrays?
// erkläre auf ein paar folien was arrays sind, wie darauf zugegriffen werden kann und mach auch beispiele in java für anfänger die sehr simple arrays zeigen
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Arrays sind eine Sammlung von Variablen
    - Auf ein Element wird über den Index zugegriffen
    - Zum Beispiel:

  ])
]
```java
int[] zahlen = {1, 2, 3, 4, 5};
System.out.println(zahlen[0]); // 1
```
#pagebreak()
// erkläre nun das indexing von arrays und
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Indexing beginnt bei 0
    - Zugriff auf ein Element: array[index]
    - Länge eines Arrays: array.length
  ])
]
```java
int[] vektor_1 = {1, 2};
int[] vektor_2 = {3, 4};
int[] vektor_3 = {vektor_1[0] + vektor_2[0], vektor_1[1] + vektor_2[1]};
System.out.println(vektor_3[0]); // 4
System.out.println(vektor_3[1]); // 6
//System.out.println(vektor_3[3]); //Fehler, Zugriff auf ein nicht existierendes Element
System.out.println(vektor_3.length); // 2
```
