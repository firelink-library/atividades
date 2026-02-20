#import "../../../../themes/inteli/lib.typ": *

= Entradas analógicas

#problem()[
  Controle a posição de um servo motor usando um potenciômetro.

  *Hardware:*
  - Servo motor (SG90 ou similar) no pino PWM 9
  - Potenciômetro de 10kΩ no pino analógico A0

  O servo deve acompanhar em tempo real a posição do potenciômetro. Quando o potenciômetro está no mínimo (0), o servo deve estar em 0°. Quando está no máximo (1023), o servo deve estar em 180°.

  *Dica:* Use a função `map()` para converter o valor lido de 0-1023 para o ângulo de 0-180.

  *Desafio:* Adicione um botão no pino 2. Quando pressionado, o servo deve fazer um "sweep" automático (ir de 0° a 180° e voltar continuamente) até o botão ser pressionado novamente, retornando ao modo manual.
]

#problem()[
  Controle a intensidade de um LED usando um potenciômetro.

  *Hardware:*
  - LED no pino PWM 9 (com resistor de 220Ω)
  - Potenciômetro de 10kΩ no pino analógico A0

  O brilho do LED deve ser proporcional à posição do potenciômetro: totalmente apagado no mínimo, brilho máximo no máximo.

  *Desafio:* Implemente três zonas de controle:
  - Zona 1 (0-30% do potenciômetro): LED permanentemente apagado
  - Zona 2 (30-70%): Brilho proporcional, variando suavemente de 0 a 255
  - Zona 3 (70-100%): LED sempre no brilho máximo

  Isso simula controles reais com faixa morta e saturação.
]
