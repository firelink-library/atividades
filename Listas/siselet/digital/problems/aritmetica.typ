#import "../../../../themes/inteli/lib.typ": *

= Aritmética booleana

#problem()[
  Simplifique a expressão booleana: $F = A B C + A B overline(C) + A overline(B) C + overline(A) B C$
]

#problem()[
  Simplifique a expressão booleana: $A + A B$
]

#problem()[
  Simplifique a expressão booleana: $A B + A overline(B)$
]

#problem()[
  Simplifique a expressão booleana: $(A + B)(A + overline(B))$
]

#problem()[
  Simplifique a expressão booleana: $A + overline(A) B$
]

#problem()[
  Simplifique a expressão booleana: $(A + B)(A + C)$
]

#problem()[
  Simplifique a expressão booleana: $A B + A C + B C$
]

#problem()[
  Simplifique a expressão booleana: $A B C + A B overline(C) + overline(A) B C$
]

#problem()[
  Simplifique a expressão booleana: $(A + B)(B + C)(B + overline(C))(overline(A))$
]

#problem()[
  Um sistema industrial possui um motor controlado por múltiplos sensores. Pretendemos simplificar o circuito de controle do motor.

  O motor deve ligar quando:
  - O botão de START for pressionado
  - O modo automático estiver ativo E o sensor de nível detectar presença
  - O modo automático estiver ativo, o sensor de nível detectar presença, E o timer de 10s expirou
  - O timer estiver ativo E NÃO estiver em emergência

  Variáveis:
  - $S$: botão START pressionado
  - $A$: modo automático ativo
  - $N$: sensor de nível detecta presença
  - $T$: timer de 10s expirou
  - $E$: emergência detectada (E = 0 indica sem emergência)

  Expressão do motor: $M = S + A N + A N T + T overline(E)$

  Simplifique esta expressão para reduzir o número de portas lógicas necessárias.
]

#problem()[
  Um sistema de controle de temperatura usa aquecedores e ventiladores para manter temperatura dentro da faixa desejada. O sistema atual possui lógica redundante que pode ser simplificada.

  O aquecedor deve ser ativado quando:
  - Temperatura baixa detectada ($L = 1$) E termostato manual ativado
  - Temperatura baixa detectada ($L = 1$) E modo automático E termostato indica aquecimento necessário
  - Temperatura baixa detectada ($L = 1$) E modo automático E termostato não indica refrigeração
  - Temperatura baixa ($L = 1$) E temperatura não alta ($overline(H) = 1$) E modo manual

  Variáveis:
  - $L$: sensor detecta temperatura baixa
  - $H$: sensor detecta temperatura alta
  - $A$: sistema em modo automático
  - $M$: sistema em modo manual
  - $Q$: termostato solicita aquecimento

  Crie a expressão lógica para este sistema e simplifique-a o máximo possível.
]
