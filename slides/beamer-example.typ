#import "beamer-template.typ": template_beamer


#let current_datum = datetime.today()
#let print_datum = "SoSe 24 " + current_datum.display("[month repr:long] [day], [year]") 

#show: doc => template_beamer(
  author: "Walter Bishop",
  title: "Produktion auf dem Mars",
  subtitle: "Eine Analyse der Produktionsbedingungen auf dem Mars",
  date: print_datum,
  layout: "medium",
  doc
)

#outline()


= Lore Ipsum
== Intro
Terms created with ```typc / Term: Definition```

/ *Term*: Definition

A code block

```cpp
//Example Code 
printf("Hello World!");
```

a table