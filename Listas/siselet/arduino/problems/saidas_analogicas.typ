#import "../../../../themes/inteli/lib.typ": *

= Saídas analógicas (PWM)

#problem()[
  Crie um efeito de "respiração" usando um LED conectado a um pino PWM (ex: pino 9).

  O LED deve aumentar gradualmente de brilho (fade in) desde apagado (0) até brilho máximo (255), depois diminuir gradualmente (fade out) de volta para apagado.

  *Requisitos:*
  - A transição completa (apagado → máximo → apagado) deve durar aproximadamente 4 segundos
  - O efeito deve ser suave e contínuo, sem saltos perceptíveis
  - Use incrementos/decrementos pequenos de valor PWM com pequenos delays entre cada mudança

  *Dica:* Divida o fade em duas fases: primeiro um loop que aumenta o valor de 0 a 255, depois um loop que diminui de 255 a 0. Ajuste o delay para controlar a velocidade total.
]

#problem()[
  Controle a velocidade de um motor DC usando PWM e um transistor NPN como driver.

  *Circuito:*
  - Motor DC conectado entre o coletor do transistor NPN (ex: TIP120 ou BC337) e a fonte positiva (5V ou 9V externo)
  - Emissor do transistor no GND comum com Arduino
  - Base do transistor conectada ao pino PWM 9 do Arduino através de resistor de 1kΩ
  - Diodo 1N4001 em paralelo com o motor (cátodo no positivo, ânodo no coletor) para proteção contra picos de tensão
  - *Importante:* O motor deve ser alimentado por fonte externa, não pelo Arduino

  *Comportamento:*
  - Aceleração gradual: velocidade aumenta de 0% a 100% em 3 segundos
  - Mantém velocidade máxima por 2 segundos
  - Desaceleração gradual: velocidade diminui de 100% a 0% em 3 segundos
  - Pausa de 1 segundo parado
  - Repete o ciclo indefinidamente

  *Desafio:* Adicione um botão no pino 2 que alterne entre dois modos quando pressionado:
  - Modo "Suave": aceleração/desaceleração gradual (como descrito acima)
  - Modo "Rápido": mudanças abruptas (0% → 100% imediato, espera 2s, 100% → 0% imediato)
]
