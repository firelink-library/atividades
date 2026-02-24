#import "../../../../themes/inteli/lib.typ": *

= Mapas de karnaugh

#problem([ Usando mapas de Karnaugh, simplifique a expressão booleana
  derivada dessa tabela verdade:

  #block(text(size: 20pt)[
    #figure(table(
      columns: (auto, auto, auto, auto),
      inset: 8pt,
      align: center,
      table.header([*A*], [*B*], [*C*], [*F*]),
      [0], [0], [0], [0],
      [0], [0], [1], [1],
      [0], [1], [0], [0],
      [0], [1], [1], [1],
      [1], [0], [0], [0],
      [1], [0], [1], [0],
      [1], [1], [0], [1],
      [1], [1], [1], [1],
    ))
  ])

  Pede-se:
  - Desenhe o mapa de Karnaugh 2×4 para esta expressão
  - Identifique os grupos adjacentes de células contendo "1"
  - Escreva a expressão simplificada resultante
])

#problem([ Usando mapas de Karnaugh, simplifique a expressão booleana
  derivada dessa tabela verdade:

  #block(text(size: 16pt)[
    #figure(table(
      columns: (auto, auto, auto, auto, auto),
      inset: 6pt,
      align: center,
      table.header([*A*], [*B*], [*C*], [*D*], [*F*]),
      [0], [0], [0], [0], [0],
      [0], [0], [0], [1], [1],
      [0], [0], [1], [0], [0],
      [0], [0], [1], [1], [1],
      [0], [1], [0], [0], [0],
      [0], [1], [0], [1], [0],
      [0], [1], [1], [0], [0],
      [0], [1], [1], [1], [1],
      [1], [0], [0], [0], [1],
      [1], [0], [0], [1], [0],
      [1], [0], [1], [0], [0],
      [1], [0], [1], [1], [0],
      [1], [1], [0], [0], [0],
      [1], [1], [0], [1], [0],
      [1], [1], [1], [0], [0],
      [1], [1], [1], [1], [1],
    ))
  ])

  Pede-se:
  - Desenhe o mapa de Karnaugh 4×4 para esta expressão
  - Identifique os grupos adjacentes de células contendo "1" (lembrando que o mapa é cilíndrico)
  - Escreva a expressão simplificada resultante
])

#problem([ Usando mapas de Karnaugh, simplifique a expressão booleana
  derivada dessa tabela verdade:

  #block(text(size: 20pt)[
    #figure(table(
      columns: (auto, auto, auto, auto),
      inset: 8pt,
      align: center,
      table.header([*A*], [*B*], [*C*], [*F*]),
      [0], [0], [0], [0],
      [0], [0], [1], [0],
      [0], [1], [0], [1],
      [0], [1], [1], [1],
      [1], [0], [0], [1],
      [1], [0], [1], [1],
      [1], [1], [0], [1],
      [1], [1], [1], [1],
    ))
  ])

  Pede-se:
  - Desenhe o mapa de Karnaugh 2×4 para esta expressão
  - Identifique os grupos adjacentes de células contendo "1"
  - Escreva a expressão simplificada resultante
])

#problem([ Usando mapas de Karnaugh, simplifique a expressão booleana
  derivada dessa tabela verdade:

  #block(text(size: 16pt)[
    #figure(table(
      columns: (auto, auto, auto, auto, auto),
      inset: 6pt,
      align: center,
      table.header([*A*], [*B*], [*C*], [*D*], [*F*]),
      [0], [0], [0], [0], [1],
      [0], [0], [0], [1], [1],
      [0], [0], [1], [0], [1],
      [0], [0], [1], [1], [1],
      [0], [1], [0], [0], [1],
      [0], [1], [0], [1], [1],
      [0], [1], [1], [0], [0],
      [0], [1], [1], [1], [0],
      [1], [0], [0], [0], [0],
      [1], [0], [0], [1], [0],
      [1], [0], [1], [0], [0],
      [1], [0], [1], [1], [0],
      [1], [1], [0], [0], [0],
      [1], [1], [0], [1], [0],
      [1], [1], [1], [0], [0],
      [1], [1], [1], [1], [0],
    ))
  ])

  Pede-se:
  - Desenhe o mapa de Karnaugh 4×4 para esta expressão
  - Identifique os grupos adjacentes de células contendo "1" (lembrando que o mapa é cilíndrico)
  - Escreva a expressão simplificada resultante
])

#problem([ Usando mapas de Karnaugh, simplifique a expressão booleana
  derivada dessa tabela verdade:

  #block(text(size: 20pt)[
    #figure(table(
      columns: (auto, auto, auto, auto),
      inset: 8pt,
      align: center,
      table.header([*A*], [*B*], [*C*], [*F*]),
      [0], [0], [0], [0],
      [0], [0], [1], [1],
      [0], [1], [0], [1],
      [0], [1], [1], [0],
      [1], [0], [0], [1],
      [1], [0], [1], [0],
      [1], [1], [0], [0],
      [1], [1], [1], [1],
    ))
  ])

  Pede-se:
  - Desenhe o mapa de Karnaugh 2×4 para esta expressão
  - Identifique os grupos adjacentes de células contendo "1"
  - Escreva a expressão simplificada resultante
])

#problem([ Um sistema de portas automáticas de acesso controla a abertura de uma porta de escritório baseado em múltiplos sensores. A porta deve abrir quando as condições forem apropriadas para entrada.

  Sensores disponíveis:
  - $P$: sensor detecta pessoa parada na porta
  - $I$: sensor detecta movimento no interior (indica alguém saindo)
  - $C$: indica período comercial (escritório aberto)

  As seguintes regras devem ser implementadas:
  - Se alguém está no interior tentando sair, a porta abre (independentemente do horário)
  - Durante horário comercial, se alguém parou na porta, a abre
  - Se não é horário comercial, a porta NÃO abre mesmo com alguém parado
  - Se a porta não deve abrir em outras situações

  Pede-se:
  - Determine a função booleana quando a porta abre ($F$)
  - Desenhe o mapa de Karnaugh 2×4
  - Identifique os grupos e simplifique a expressão
  - Escreva a expressão simplificada resultante
])

#problem([ Um sistema de irrigação inteligente controla um motor de irrigação baseado em condições ambientais. O sistema deve ligar o motor quando necessário economizar água.

  Sensores disponíveis:
  - $U$: solo está úmido
  - $T$: temperatura está alta
  - $I$: está no período noturno

  As seguintes regras devem ser implementadas:
  - O motor deve ligar quando o solo não está úmido E está no período noturno
  - O motor deve ligar quando o solo não está úmido E temperatura está alta
  - Se o solo está úmido, o motor NÃO liga (independentemente de temperatura ou período)
  - Se o solo está seco, mas temperatura baixa E período diurno, NÃO liga

  Pede-se:
  - Determine a função booleana quando o motor liga ($F$)
  - Desenhe o mapa de Karnaugh 2×4
  - Identifique os grupos e simplifique a expressão
  - Escreva a expressão simplificada resultante
])

#problem([ Um sistema de controle de um motor industrial possui restrições físicas de operação que tornam algumas combinações impossíveis.

  Variáveis de entrada:
  - $A$: comando de ativação do motor
  - $B$: nível de tanque (0 = baixo, 1 = alto)
  - $C$: modo de operação automático

  Restrição física do sistema:
  - O sensor de nível B e o modo automático C são mutuamente exclusivos devido ao projeto da planta
  - Estado $(B=1, C=1)$ NUNCA ocorre fisicamente no sistema

  Lógica de operação do motor:
  - Motor liga quando comando ativado E nível baixo
  - Motor liga quando comando ativado E modo automático
  - Motor NÃO liga quando nível alto E modo manual
  - Motor NÃO liga quando comando desativado

  Pede-se:
  - Determine a função booleana quando o motor liga ($F$)
  - Construa a tabela-verdade e indique com X a combinação impossível
  - Desenhe o mapa de Karnaugh 2×4 incluindo o X
  - Aproveite o X (don't care) para formar grupos maiores e simplificar ao máximo
  - Escreva a expressão simplificada resultante
])
