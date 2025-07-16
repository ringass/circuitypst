#import "../lib.typ": *

#show: slides.with(
  title: "Circuitando Sonhos",
  subtitle: "Projeto de extensão - UNESP",
  date: "14.07.2025",
  authors: "Murilo Gonzaga",
  ratio: 16 / 9,
  layout: "medium",
  title-color: rgb("#0e3029"),
  toc: true,
  toc-title: "Sumário",
  theme: "full",
)

= INTRO

== Quem somos nós?

== Didática

== Conhecendo componentes

== Arduino IDE

= Piscar um LED

== Código + Montagem
#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    const int ledPin = 8;

    void setup() {
      pinMode(ledPin, OUTPUT);
    }

    void loop() {
      digitalWrite(ledPin, HIGH);
      delay(1000);
      digitalWrite(ledPin, LOW);
      delay(1000);
    }
    ```
    #colbreak()
    #text("Protoboard Montada", weight: "semibold", size: 12pt)

    #image("../assets/class1/ex1.png", width: 95%, alt: "Circuito realizado no Tinkercad")
  ]
]

