#import "../lib.typ": *

#show: slides.with(
  title: "Circuitando Sonhos",
  subtitle: "Projeto de extensão",
  date: "14.07.2025",
  authors: "Murilo Gonzaga",
  ratio: 16 / 9,
  layout: "medium",
  title-color: rgb("#0e3029"),
  toc: true,
  toc-title: "Sumário",
  theme: "full",
)

= Visão geral

== Componentes necessários

#align(horizon + center)[
  #text("Tabela de componentes", weight: "semibold", size: 15pt);
  #table(
    columns: 3,
    [*Componente*], [*Descrição*], [*Quantidade*],
    [_PROTOBOARD_], [Placa para montagem de circuitos temporários, sem solda], [1],
    [_LEDS_], [Diodos emissores de luz para sinalização], [2],
    [_JUMPERS_], [Fios usados para conectar componentes na protoboard], [min: 2],
    [_ARDUINO UNO_], [Placa microcontroladora que executa o código], [1],
    align: left,
  )
]


== Iniciando o ambiente no Arduino IDE

= Piscar um LED

== Código + Montagem

#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    const int ledPin = 13;

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

    // #image()
  ]
]

= Piscar LEDS alternadamente

== Código + Montagem
#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    const int ledPin = 13;

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

    // #image()
  ]
]

// #lorem(20)

// / *Term*: Definition

// ```cpp
// cout << "vamos nessa" << endl;
// ```
