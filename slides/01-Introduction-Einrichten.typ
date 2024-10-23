#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "WiSe 24/25 - " + current_datum.display("[day]. [month repr:long] [year]") 

#show: doc => template_beamer(
  author: "Robin D'Andrea",
  title: "Zusatz Tutorium Programmieren 1",
  subtitle: "Introduction - Einrichtung von Git und Gitlab",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()

= Organisatorisches
== Was sind die Ziele des Tutoriums?
#align(horizon,
[
  #set text(size: 1.2em)
  - Programmieren lernen
  - Erste Schritte in einem längerer Projekt
  - Mehr Praxis erfahren

  - Spaß beim Programmieren finden
  - Algorithmisches Denken lernen
])
#place(
  top + right,
  image("figures/meme.png", width: 35%),
)

== Was machen wir im Tutorium?
#align(horizon,
[
  #set text(size: 1.2em)
  - Ein Projekt über das gesamte Semester
  - Das Projekt: Ein Matrizen- und Vektorrechner
  - Wissen aus der Vorlesung anwenden und verfestigen

  - Wöchentlicher Aufwand: 2-4 Stunden
  - Klausurvorbereitend
])

== Semesterplan
#table(
  columns: (auto, auto, 1fr),
  table.header[Datum][ ][Thema],
  [24.10.2024], [ ], [Variablen und Datentypen],
  [07.11.2024], [ ], [Kontrollstrukturen (If-Else)],
  [14.11.2024], [ ], [Kontrollstrukturen (Schleifen)],
  [28.11.2024], [ ], [Einführung in OOP (Klassen und Objekte)],
  [05.12.2024], [ ], [Vererbung],
  [12.12.2024], [ ], [Schnittstellen (Interfaces)],
  [19.12.2024], [ ], [Rekursion],
  [09.01.2025], [ ], [Fehlerbehandlung (Exceptions)],
  [16.01.2025], [ ], [Testen],
  [23.01.2025], [ ], [Abschluss und Optimierung],
  [30.01.2025], [ ], [Klausurvorbereitung],
)

== Kleine Teams
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Findet euch in kleinen Teams zusammen
    - Die größe ist nicht relevant (empfohlen 2-3 Personen)
    - Sendet uns eure y-Nummern zu

    - Teamarbeit ist wichtig

  ])
  / *y-Nummer zusenden*: Sendet uns eure y-Nummern zu, damit wir euch in euer Gitlab Repository hinzufügen können. Am besten spätestens bis zum 31.10.2024.
]

== Kommunikation
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Matrix Channel: https://matrix.to/#/!PoSJRaQHQOGuOyBtJs:matrix.tu-bs.de?via=matrix.tu-bs.de
    - In der Studip Veranstaltung das Forum
    - Donnerstags 15:00 Uhr hier direkt bei der Veranstaltung
    - In Persona: IZ 146
    - Oder per Mail:
      - dandrea\@ibr.cs.tu-bs.de
      - l.stange\@tu-bs.de
  ])
]
== IBR Account

#align(horizon,
[
  #set text(size: 1.2em)
  1. Webseite aufrufen: https://www.ibr.cs.tu-bs.de/passwd/
  2. y-Account aktivieren
  3. Mit dem GITZ-Account anmelden
  4. Erhalt eines gleichnamigen Account im IBR
  5. Ermöglicht Anmeldung im GitLab, Nutzung der Referenzplattform, …
])

#figure(
  image("figures/passwd_step_00.png", width: 90%),
  caption: [
    y-Account aktivieren
  ],
)
#figure(
  image("figures/passwd_step_01.png", width: 60%),
  caption: [
    Mit dem GITZ-Account anmelden
  ],
)
#figure(
  image("figures/passwd_step_02.png", width: 60%),
  caption: [
    Account aktivieren
  ],
)
= Einrichten von Git und Gitlab

== Git

#align(horizon,
[
  #set text(size: 1.2em)
  Arbeiten mit Git:
  - Versionskontrolle
  - Zusammenarbeit
  - Backup
  - Austausch von Dateien
  Anleitung zur Installation von Git:
  - #link("https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/")
  - Bei Linux meist Vorinstalliert und bei Windows mit `winget install -e --id Git.Git` installierbar
])

#pagebreak()

#[
  #set text(size: 0.9em)
  Einige relavante Git Befehle (siehe `git help`):
  //- `git init`: Initialisiert ein neues Repository
  - `git clone <url>`: Kopiert ein (remote) Repository
  - `git add <file>`: Fügt eine Datei zum Index hinzu
  - `git commit -m "message"`: Speichert den Index im Repository
  - `git push <remote> <branch>`: Überträgt lokale Änderungen auf das Remote-Repository
  - `git pull <remote> <branch>`: Lädt Änderungen vom Remote-Repository
  - `git status`: Zeigt den Status des Arbeitsverzeichnisses
  //- `git log`: Zeigt die Commit-Historie
]
/ *.gitignore*: Wir wollen keine Dateien die aus unserem Code generiert werden in Git haben, wie z.B. `.class` Dateien oder `.idea` Ordner. Dafür erstellen wir eine Datei `.gitignore` im Root-Verzeichnis des Projekts und fügen dort die Dateien/Ordner hinzu, die nicht in Git versioniert werden sollen.
== Gitlab

#align(horizon,
[
  #set text(size: 1.2em)
  Gitlab ist eine Webanwendung zur Verwaltung von Git-Repositories
  - Webinterface
  - Teamarbeit
  - Issue-Tracking
  - CI/CD
])
/ *IBR Gitlab*: Um unser Projekt auszutauschen und zu verwalten, nutzen wir das Gitlab des IBR. Sobald ihr euren IBR Account aktiviert habt, könnt ihr euch auf der Seite https://gitlab.ibr.cs.tu-bs.de/ anmelden. Nach dem ihr euer Team gebildet habt und uns eure y-Nummern geschickt habt, werden wir euch in euer Repository hinzufügen.
== SSH Key
/ *IBR Gitlab*: Außerhalb der Uni kann nur mit einem SSH Key Code gepusht oder gepullt werden. Wie ein SSH Key erstellt wird, wird/wurde im Linux Vorkurs gezeigt. Dieser Key wird in Gitlab unter Settings -> SSH Keys eingetragen.
#figure(
  image("figures/sshkey_step_00.png", width: 45%),
  caption: [
    Gitlab Settings
  ],
)
#figure(
  image("figures/sshkey_step_01.png", width: 90%),
  caption: [
    Neuen Key hinzu fügen
  ],
)
#figure(
  image("figures/sshkey_step_02.png", width: 60%),
)
= Zusammenfassung

== Zusammenfassung
#[
  #set text(size: 1.2em)
  #align(horizon,
  [
    - Semesterprojekt: Matrizen- und Vektorrechner
    - Findet euch in kleinen Teams zusammen
    - Richtet euch einen IBR Account ein
    - Installiert euch Git auf eurem System

    - Hinterlegt euch einen SSH Key in Gitlab, um auch außerhalb der Uni arbeiten zu können
  ])
]
/ *IBR Gitlab Repo*: Zum anlegen des Gitlab Repo, benötigen wir euere y-Nummern als Team. Diese könnt ihr uns per Mail schicken.
