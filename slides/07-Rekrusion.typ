#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Entrekursivierung",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Rekursion
== Beispiel

```java
static String[] buffer = {
 "p", "f", "u", "r", "n", "f", "o", "u", "n", "g"
};

static String r(int i, String s) {
    if (i < 0) return s;
    if (i % 3 != 0) return r(i - 1, s);

    return r(i - 1, buffer[i] + s);
}
```

== Entrekursivierung

#[
  #set text(size: 1.2em)
  #align(top,
  [
    \
    Herangehensweise:
    1. Finde Variablen, die sich verändern \
      -> Deklariere die Variabeln
    2. Finde die Abbruchbedingung \
      -> Erstelle eine while-Schleife mit dieser Abbruchbedingung
    3. Finde die Bedingungen, die Variabeln verändern \
      -> Erstelle if-Abfragen, die die Variabeln verändern
  ])
]

#pagebreak()

\
#[
  #align(top,
  [
    1. Finde Variablen, die sich verändern
    #raw("if (i % 3 != 0) return r(", lang: "java") #highlight[#raw( "i - 1", lang: "java")] #raw( ", s);", lang: "java") und
    #raw("return r(", lang: "java") #highlight[#raw( "i - 1", lang: "java")] #raw(", ", lang:"java") #highlight[ #raw( "buffer[i] + s", lang: "java")] #raw( ");", lang: "java")\
    Es können auch weitere Variabeln verändert werden, wenn weitere Methoden aufgerufen werden. Diese werden dann einfach in der Methode Deklariert.
  ])
]
```java
static String r_entrekursiv(int i, String s) // Nehme nur Variabeln als Parameter, die initial übergeben werden
{
    // Deklariere weitere Variabeln, die sich verändern hier
    // z.B. int j = 0;
}
```

#pagebreak()
#[
  #align(top,
  [
    2. Finde die Abbruchbedingung
    #raw("if (i < 0) return s;", lang: "java")\
    Die Abbruchbedingung wird in einer while-Schleife verwendet und negiert.
  ])
]
```java
while (!(i < 0)) // Abbruchbedingung negiert durch !
{
}

return s; // Rückgabe der Methode
```

#pagebreak()
#[
  #align(top,
  [
    3. Finde die Bedingungen, die Variabeln verändern
    #raw("if (", lang: "java") #highlight[#raw("i % 3 != 0", lang:"java")] #raw(") return r(", lang: "java") #highlight[#raw( "i - 1", lang: "java")] #raw( ", s);", lang: "java") und
    #raw("return r(", lang: "java") #highlight[#raw( "i - 1", lang: "java")] #raw(", ", lang:"java") #highlight[ #raw( "buffer[i] + s", lang: "java")] #raw( ");", lang: "java")\
    Die Bedingungen werden in if-Abfragen umgewandelt.
  ])
]
```java
if (i % 3 != 0)
{
    i = i - 1;
    continue;
}

s = buffer[i] + s;
i = i - 1;
```

#pagebreak()

#[
```java
static String r_entrekursiv(int i, String s) {
    while (!(i < 0)) {
        if (i % 3 != 0) {
            i = i - 1;
            continue;
        }
        i = i - 1;
        s = buffer[i] + s;
    }
    return s;
}
```
].


= Aufgabe (Determinante)
// Ziel: Einführung in rekursive Algorithmen.
// Aufgabe:
// Implementiert die Berechnung der Determinante einer Matrix rekursiv (nur für quadratische Matrizen).
// Refactoring: Fügt eine Methode determinant() in der MatrixVektor-Klasse hinzu.

== Aufgabe und Code
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Entrekursiviert die Methode berechneDeterminante()
    - Ihr könnt diese Methoden bei euch dann in euer Projekt mit einbauen
  ])
]

#pagebreak()
```java
public static int berechneDeterminante(int[][] matrix) {
    int n = matrix.length;
    int determinant = 0;

    if (n == 1) {
        return matrix[0][0];
    }
    if (n == 2) {
        return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0];
    }

    for (int col = 0; col < n; col++) {
        int vorzeichen = (col % 2 == 0 ? 1 : -1);
        int c = vorzeichen * matrix[0][col];
        int[][] submatrix = getSubmatrix(matrix, col);
        determinant +=  c * berechneDeterminante(submatrix);
    }

    return determinant;
}

// --------------------

private static int[][] getSubmatrix(int[][] matrix, int excludedCol) {
    int n = matrix.length;
    int[][] submatrix = new int[n - 1][n - 1];

    for (int i = 1; i < n; i++) {
        int subColIndex = 0;
        for (int j = 0; j < n; j++) {
            if (j == excludedCol) {
                continue;
            }
            submatrix[i - 1][subColIndex++] = matrix[i][j];
        }
    }

    return submatrix;
}
```

#pagebreak()
#[
  #set text(size: 1.6em)
  #align(horizon+center,
  [
    Happy Coding!
  ])
]\