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

= Visão geral

== Componentes necessários

#align(horizon + center)[
  #text("Tabela de componentes", weight: "semibold", size: 15pt);
  #table(
    columns: 3,
    [*Componente*], [*Descrição*], [*Quantidade*],
    [_PROTOBOARD_], [Placa para montagem de circuitos temporários, sem solda], [1],
    [_LEDS_], [Diodos emissores de luz para sinalização], [min: 3],
    [_JUMPERS_], [Fios usados para conectar componentes na protoboard], [muitos],
    [_ARDUINO UNO_], [Placa microcontroladora que executa o código], [1],
    align: left,
  )
]

= Piscar LEDS alternadamente

== Código + Montagem
#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    const int ledPin = 8;
    const int ledPin2 = 7;

    void setup() {
      pinMode(ledPin, OUTPUT);
      pinMode(ledPin2, OUTPUT);
    }
    void loop() {
      digitalWrite(ledPin, HIGH);
      digitalWrite(ledPin2, LOW);
      delay(1000);
      digitalWrite(ledPin, LOW);
      digitalWrite(ledPin2, HIGH);
      delay(1000);
    }
    ```
    #colbreak()
    #text("Protoboard Montada", weight: "semibold", size: 12pt)

    #image("../assets/class1/ex2.png", width: 105%, alt: "Circuito realizado no Tinkercad")
  ]
]

= Semáforo de carros

== Código + Montagem
#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    int vermelho = 1;
    int amarelo = 2;
    int verde = 3;

    void setup()
    {
      pinMode(vermelho, OUTPUT);
      pinMode(amarelo, OUTPUT);
      pinMode(verde, OUTPUT);
    }

    void loop()
    {
      digitalWrite(vermelho, HIGH);
      digitalWrite(amarelo, LOW);
      digitalWrite(verde, LOW);
      delay(4000);

      digitalWrite(vermelho, LOW);
      digitalWrite(amarelo, HIGH);
      digitalWrite(verde, LOW);
      delay(3000);

      digitalWrite(vermelho, LOW);
      digitalWrite(amarelo, LOW);
      digitalWrite(verde, HIGH);
      delay(4000);

    }
    ```
  ]
  #text("Protoboard montada", weight: "semibold", size: 12pt)
  #image("../assets/class1/semaforo.png", width: 87%)
]

= EXTRA

== Abordagem

#text(
  [A partir do projeto anterior do semáforo de carros, adicione à protoboard um semáforo de pedestres com dois LEDs: vermelho e verde.

    Programe o funcionamento de modo que:

    - O LED verde dos pedestres acenda quando o semáforo dos carros estiver vermelho ou amarelo, indicando que é seguro atravessar.

    - O LED vermelho dos pedestres acenda quando o semáforo dos carros estiver verde, indicando que os pedestres devem esperar.

    DICA: Apenas integre! Não é necessário a exclusão do código anterior!
  ],
  size: 12pt,
)

== Integração
#align(horizon + center)[
  #columns(2)[

    #text("Declaração e setup", weight: "semibold", size: 12pt) \
    ```cpp
    int vermelhoP = 4;
    int verdeP = 5;

    void setup()
    {
      pinMode(vermelhoP, OUTPUT);
      pinMode(verdeP, OUTPUT);
    }
    ```
    #colbreak()
    #text("Loop", weight: "semibold", size: 12pt) \
    ```cpp
    void loop()
    {
      //bloco de código onde vermelho é HIGH
      digitalWrite(vermelhoP, LOW);
      digitalWrite(verdeP, HIGH);

      //bloco de código onde amarelo é HIGH
      digitalWrite(vermelhoP, HIGH);
      digitalWrite(verdeP, LOW);

      //bloco de código onde verde é HIGH
      digitalWrite(vermelhoP, HIGH);
      digitalWrite(verdeP, LOW);
    }
    ```
  ]

  #text("Protoboard completa", weight: "semibold", size: 12pt);
  #image("../assets/class1/desafio.png", width: 87%)
]

