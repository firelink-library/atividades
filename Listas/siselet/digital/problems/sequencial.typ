#import "../../../../themes/inteli/lib.typ": *

= Circuitos sequenciais

#problem()[
  Flip-flops são os blocos fundamentais dos circuitos sequenciais. Os quatro tipos principais são SR, D, JK e T, cada um com comportamento distinto.

  Pede-se:
  - Construa a tabela de verdade de cada flip-flop mostrando $Q_(t+1)$ em função das entradas e do estado atual $Q_t$:
    - *SR*: entradas $S$ (Set) e $R$ (Reset)
    - *D*: entrada $D$ (Data)
    - *JK*: entradas $J$ e $K$
    - *T*: entrada $T$ (Toggle)
]

#problem()[
  Um contador assíncrono (ripple counter) de 3 bits usa flip-flops em cascata, onde a saída $Q$ de cada estágio aciona o clock do próximo.

  Pede-se:
  - Desenhe o diagrama de estados do contador crescente: $0 arrow.r 1 arrow.r 2 arrow.r 3 arrow.r 4 arrow.r 5 arrow.r 6 arrow.r 7 arrow.r 0$
  - Monte a tabela de estados completa com as colunas $Q_2$, $Q_1$, $Q_0$ (estado atual e próximo estado)
  - Desenhe o circuito usando 3 flip-flops JK conectados em cascata (ripple counter), com $J = K = 1$ em todos os estágios e o clock de cada estágio ligado à saída $Q$ do estágio anterior
]

#problem()[
  Um contador assíncrono decrescente de 3 bits percorre os estados em ordem inversa.

  Pede-se:
  - Desenhe o diagrama de estados do contador decrescente: $7 arrow.r 6 arrow.r 5 arrow.r 4 arrow.r 3 arrow.r 2 arrow.r 1 arrow.r 0 arrow.r 7$
  - Monte a tabela de estados completa com as colunas $Q_2$, $Q_1$, $Q_0$
  - Descreva como adaptar o circuito do contador crescente para obter o contador decrescente (dica: utilize a saída $overline(Q)$ em vez de $Q$ para acionar o clock do próximo estágio)
]

#problem()[
  Em contadores síncronos todos os flip-flops são acionados pelo mesmo clock, eliminando o atraso de propagação. Um contador síncrono crescente de 4 bits usa flip-flops JK com lógica de carry propagada por portas AND.

  Pede-se:
  - Monte a tabela de estados completa (estados 0 a 15) com as colunas $Q_3$, $Q_2$, $Q_1$, $Q_0$
  - Derive as equações de excitação de cada flip-flop JK:
    - $J_0 = K_0 = 1$
    - $J_1 = K_1 = Q_0$
    - $J_2 = K_2 = Q_1 Q_0$
    - $J_3 = K_3 = Q_2 Q_1 Q_0$
  - Desenhe o circuito com 4 flip-flops JK e as portas AND responsáveis pelo carry síncrono
]

#problem()[
  Um contador de década (BCD) conta de 0 a 9 e retorna a 0. Os estados 10 a 15 são inalcançáveis e podem ser tratados como _don't cares_ no projeto.

  Pede-se:
  - Monte a tabela de estados para os estados 0 a 9, indicando o próximo estado de cada um, e marque os estados 10-15 como $times$ (_don't care_)
  - Utilize mapas de Karnaugh com os _don't cares_ para obter as equações de excitação dos flip-flops JK ($J$ e $K$ de cada bit $Q_3 Q_2 Q_1 Q_0$)
  - Desenhe o circuito do contador BCD, destacando a lógica de reset ao detectar o estado 1010 (decimal 10)
]

#problem()[
  A Wizards of the Coast quer a versão final do dado digital. O sistema usa um contador cíclico de 3 bits implementado com flip-flops D, que conta de 001 a 110 (valores 1 a 6). Enquanto o botão é pressionado ($"BTN" = 1$), o contador avança a cada borda de subida do clock (simulando o "rolar"). Ao soltar ($"BTN" = 0$), o valor atual é mantido e exibido nos 9 LEDs do dado.

  #figure(image("../assets/dado.png", height: 20%))
  #figure(image("../assets/7seg.png", height: 20%))

  Entradas:
  - $"CLK"$: clock do sistema
  - $"BTN"$: botão (1 = contando, 0 = parado/exibindo)

  Saídas: LEDs $a$ a $i$ organizados em matriz 3×3

  Pede-se:
  - Desenhe o diagrama de estados do contador cíclico: $001 arrow.r 010 arrow.r 011 arrow.r 100 arrow.r 101 arrow.r 110 arrow.r 001$
  - Monte a tabela de estados com as colunas $Q_2$, $Q_1$, $Q_0$ (estado atual), $Q_2^+$, $Q_1^+$, $Q_0^+$ (próximo estado)
  - Derive as equações dos flip-flops D: $D_2$, $D_1$ e $D_0$ em função de $Q_2$, $Q_1$ e $Q_0$
  - Monte a tabela do decoder: $Q_2 Q_1 Q_0 arrow.r$ LEDs $a$ a $i$ (use a mesma convenção do problema do dado combinacional)
  - Desenhe o circuito completo: 3 flip-flops D com enable controlado por $"BTN"$ + lógica de decodificação dos LEDs
]
