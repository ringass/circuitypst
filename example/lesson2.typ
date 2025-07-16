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

== Objetivos

== Componentes necessários

#align(horizon + center)[
  #text("Tabela de componentes", weight: "semibold", size: 15pt);
  #table(
    columns: 3,
    [*Componente*], [*Descrição*], [*Quantidade*],
    [_PROTOBOARD_], [Placa para montagem de circuitos temporários, sem solda], [1],
    [_LEDS_], [Diodos emissores de luz para sinalização], [2],
    [_JUMPERS_], [Fios usados para conectar componentes na protoboard], [min: 7],
    [_ARDUINO UNO_], [Placa microcontroladora que executa o código], [1],
    [_BOTÃO DE PRESSÃO_], [Botão que realiza um sinal caso sejam pressionados], [2],
    align: left,
  )
]

= Acender LED por botão de pressão

== Código + Montagem

#align(horizon + center)[
  #columns(2)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    const int led = 8;
    const int botao = 2;

    void setup() {
      pinMode(led, OUTPUT);
      pinMode(botao, INPUT_PULLUP);
    }
    void loop() {
      int estadoBotao = digitalRead(botao);
      if (estadoBotao == LOW) {
        digitalWrite(led, HIGH);
      } else {
        digitalWrite(led, LOW);
      }
    }
    ```

    #colbreak()
    #text("Protoboard Montada", weight: "semibold", size: 12pt)

    #image("../assets/class2/ex1.png", width: 108%)
  ]
]

= Dois botões, duas funções

== Código + Montagem

#align(horizon + center)[
  #columns(2, gutter: 4pt)[

    #text("Código em cpp", weight: "semibold", size: 12pt)
    ```cpp
    int botaoLigar = 7;
    int botaoDesligar = 6;
    int led = 8;

    void setup() {
      pinMode(botaoLigar, INPUT_PULLUP);
      pinMode(botaoDesligar, INPUT_PULLUP);
      pinMode(led, OUTPUT);

      digitalWrite(led, LOW); //definindo led como apagado
    }

    void loop() {
      if (digitalRead(botaoLigar) == LOW) {
        digitalWrite(led, HIGH);
      }

      if (digitalRead(botaoDesligar) == LOW)
      {
        digitalWrite(led, LOW);
      }
    }
    ```
  ]
]

#align(center + horizon)[
  // #text("Protoboard Montada", weight: "semibold", size: 11pt)
  #image("../assets/class2/ex2.png", width: 40%)
]
