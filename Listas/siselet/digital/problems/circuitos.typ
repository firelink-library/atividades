#import "../../../../themes/inteli/lib.typ": *

= Circuitos combinacionais

#problem()[
  Um multiplexador (MUX) é um circuito que seleciona uma entre várias entradas de dados e a encaminha para uma única saída, baseado em sinais de seleção. O MUX 4:1 possui 4 entradas de dados selecionadas por 2 bits.

  O multiplexador 4:1 possui:
  - 4 entradas de dados: $D_0$, $D_1$, $D_2$, $D_3$
  - 2 entradas de seleção: $S_1$, $S_0$
  - 1 saída: $Y$

  Pede-se:
  - Crie o circuito lógico do MUX 4:1 usando portas AND, OR e NOT
]

#problem()[
  Projete um multiplexador 8:1 usando exclusivamente multiplexadores 4:1.

  Pede-se:
  - Crie o circuito lógico conectando dois MUX 4:1 e um MUX 2:1 para formar o MUX 8:1
]

#problem()[
  Um demultiplexador (DEMUX) é um circuito que distribui um único sinal de entrada para uma entre várias saídas, selecionada por sinais de controle. O DEMUX 1:4 possui 1 entrada de dados e 4 saídas selecionadas por 2 bits.

  O demultiplexador 1:4 possui:
  - 1 entrada de dados: $D$
  - 2 entradas de seleção: $S_1$, $S_0$
  - 4 saídas: $Y_0$, $Y_1$, $Y_2$, $Y_3$

  Pede-se:
  - Crie o circuito lógico do DEMUX 1:4 usando portas AND, OR e NOT
]

#problem()[
  Um sistema de gerenciamento de memória possui 4 segmentos de memória que podem ser selecionados individualmente para leitura/escrita. O sistema usa um demultiplexador para rotear o sinal de controle para o segmento correto.

  Entradas do sistema:
  - 2 bits de seleção de segmento ($S_1$, $S_0$)
  - 1 sinal de habilitação (ENABLE)
  - 4 saídas de controle (uma para cada segmento de memória)

  Funcionamento desejado:
  - Quando ENABLE = 0, nenhuma saída deve ser ativada
  - Quando ENABLE = 1, exatamente uma saída deve ser ativada baseada em $S_1 S_0$

  Pede-se:
  - Crie o circuito lógico do demultiplexador 1:4 com entrada ENABLE
]

#problem()[
  Displays de 7 segmentos são componentes muito utilizados para representar dígitos numéricos em sistemas digitais. Cada display possui 7 LEDs (a, b, c, d, e, f, g) que podem ser ligados individualmente.

  Para exibir um dígito específico, é necessário acender uma combinação específica de segmentos. Por exemplo:
  - Para mostrar "0": a, b, c, d, e, f (exceto g)
  - Para mostrar "1": b, c
  - Para mostrar "2": a, b, g, e, d

  Um decoder 7-segments recebe como entrada o código BCD (Binary Coded Decimal) de um dígito (0-9) e fornece como saída 7 sinais que controlam cada segmento do display.

  Pede-se:
  - Crie o diagrama do circuito do decoder 7-segments mostrando as entradas (4 bits) e saídas (7 segmentos)
]

#problem()[
  A empresa Wizards of the Coast está desenvolvendo um dado digital para modernizar jogos de tabuleiro. O protótipo consiste em um display formado por 9 LEDs organizados em matriz 3×3 (segmentos a até i). O sistema deve representar todas as faces de um dado tradicional (números 1 a 6).

  #figure(image("../assets/dado.png", height: 20%))
  #figure(image("../assets/7seg.png", height: 20%))

  Pede-se:
  - Crie um decoder que, a partir de uma entrada binária de 3 bits, acione corretamente os segmentos para representar os números 1 a 6 em formato de dado
]
