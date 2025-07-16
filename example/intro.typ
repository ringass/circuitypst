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

= Intro

== Quem somos nós?
#columns(2)[

  O Circuitando Sonhos é um projeto de extensão da UNESP Bauru, conduzido majoritariamente por alunos do curso de Ciência da Computação. Nosso objetivo é disseminar o conhecimento em robótica de forma acessível e prática pela cidade de Bauru.

  Através de oficinas, atividades lúdicas e projetos interativos, buscamos estimular o raciocínio lógico, o interesse por física e matemática, além de promover habilidades como o trabalho em equipe e a resolução de problemas.

  #colbreak()

  #image("../assets/intro/LTIA.jpg", width: 100%)
]
== Didática
Nossas aulas são divertidas, interativas e em grupo! Incentivamos que os alunos se envolvam ativamente, trabalhando em grupos com autonomia, mas sempre sob uma supervisão leve e atenta.

A dinâmica é simples e eficaz:

- Começamos com uma explicação clara da atividade do dia, revisando também os componentes.

- Em seguida, os alunos se organizam em grupos para colocar a mão na massa.

- Após a conclusão, fazemos uma revisão rápida do que foi feito.

Nosso foco é criar um ambiente de aprendizagem leve e estimulante, onde o conhecimento é construído na prática.
== Conhecendo componentes

== Arduino IDE

=== Conhecendo
#columns(2)[
  #text["O Arduino IDE é o ambiente de desenvolvimento oficial para programar placas Arduino. Ele permite escrever, compilar e enviar código facilmente para os microcontroladores, sendo ideal para nosso projeto."]
  #colbreak()
  #align(center, image("../assets/intro/Arduino_IDE_logo.png", width: 35%))
]

#v(-6pt)

=== Configurando

#columns(3)[
  #text[Para Configurarmos seguiremos dois passos:
  ]

  #colbreak()
  #text[- Definir porta]

  #align(center, image("../assets/intro/port-selection.png"))
  #colbreak()
  #text()[- Definir placa]
  #align(center, image("../assets/intro/board-selection.png", width: 90%))
]

#pagebreak()

=== Entendendo o escopo

#block()[
  Estamos trabalhando com c++ e então podemos referenciar nossas variaveis como: \

  ```cpp
  int LED = 1; //O "int" significa que essa variável é um numero;
  ```

  ```cpp
  void setup(){
  //essa função faz o papel de "organizador" do projeto antes de começar a funcionar
  pinMode(LED, OUTPUT) //define o modo do "pino" pelo número do mesmo;
  }
  ```

  ```cpp
  void loop(){
  //roda repetidamente enquanto a placa estiver ligada. Aqui deve ficar o código principal
  }
  ```
]



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

