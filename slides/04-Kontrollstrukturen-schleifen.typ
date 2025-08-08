#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Kontrollstrukturen (For-While)",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Aufgabe
// Zeitslot 3: Schleifen
// Ziel: Einführung in Schleifen für wiederholte Operationen.
// Aufgabe:
// Erweitert den Code so, dass ihr mit beliebig langen Vektoren arbeiten könnt (dynamische Vektorlängen, statt fixen 2D-Vektoren).
// Nutzt Schleifen, um die Addition und das Skalarprodukt von Vektoren beliebiger Länge zu berechnen.
// Nutzt Schleifen zum berechnen der Determinante einer Matrix
// Beispiel: for (int i = 0; i < v1.length; i++) { sum[i] = v1[i] + v2[i]; }.
// Lernziel: Verständnis von Schleifen und deren Anwendung auf Arrays.
== Skalarprodukt von Vektoren (Wiederholung)
// Erkläre das Skalarprodukt von Vektoren
#[
  #align(horizon,
  [
    - Das Skalarprodukt von 2 Vektoren berechnen, was die Summe der Produkte der Komponenten
    $ mat(1;2;) circle.filled.small mat(3;4;) = 1*3 + 2*4 = 11 $
    - In sehr Mathematisch mit Gaußscher Summenformel
    $ mat(#emph(text(blue)[$v_0$]) ;...;v_(n-1)) circle.filled.small mat(u_0;...;u_(n-1)) = sum_(i=0)^(n-1) v_i * u_i
    & \ = #emph(text(blue)[$v_0$])  * u_0 + ... + v_(n-1) * u_(n-1) $
  ])
]

== While-Schleife
#[
  #align(horizon,
  [
    - Beispiel einer While Schleife
    ```java
    while (true)
    {
        System.out.println("Foo bar")
    }
    ```
  ])
]

== Gaußscher Summenformel in Code übersetzen
#[
  #align(horizon,
  [
    - Summe eines Vektors $sum_(i=0)^(#emph(text(blue)[$n$])-1) v_i$ mit $v = mat(v_0 ;...;v_(#emph(text(blue)[$n$])-1))$ und #emph(text(blue)[$n$]) Elementen
    ```java
    int[] v = { 0, 1, 2, 3 };
    int n = v.length;
    int i = 0;
    int result = 0;
    while (i < n)
    {
        result += v[i];
        i = i + 1;
    }
    System.out.println("Summe des Vektors: " + result);
    ```
  ])
]

== For-Schleife
#[
  #align(horizon,
  [
    ```java
    int[] v = { 0, 1, 2, 3 };
    int result = 0;

    for (int i = 0; i < v.length; i++)
    {
        result += v[i];
    }

    System.out.println("Summe des Vektors: " + result);
    ```
  ])
]

== Aufgabenbeschreibung
#[

  #set text(size: 1.2em)
  #align(horizon,
  [
    - Vektoren beliebiger Größe Addieren

    - Vektoren mit einem Skalar multiplizieren

    - Skalarprodukt beliebiger Vektor größen ausrechenen
  ])
]

== Zusatz Sachen Matrizen
#[
  #align(horizon,
  [
    - Es gibt auch mehr dimensionale Arrays, die als Matrix $mat(0, 1; 2, 3)$ verwendet werden kann
    ```java
    int[][] matrix =
      {
          { 0, 1 },
          { 2, 3 }
      };
    ```
    - Erstellt eine Schleife die beliebige Matrizen mit einem Vektor multiplizieren, bei den wieder ein Vektor rauskommt
    $mat(0, 1; 2, 3) * mat(4;5) = mat(4 * 0 + 5*1; 4*2 + 5 * 3) = mat(5;23)$
  ])
]

== Ziel
// erkläre das Ziel, was nur ein Ausführbares Programm für erste ist und das man bereits selbst kompilieren kann, optional kann man bereits arrays verwenden und man hat bis zum 7. November Zeit
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Ziel: Bestehndes Programm refactoren
    - Simple Kontrollstrukturen verstehen mit Schleifen
    - bis zum 21. November
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