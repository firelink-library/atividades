#import "../../../../themes/inteli/lib.typ": *

= Saídas digitais

#problem()[
  Implemente um contador binário de 3 bits usando LEDs. Use 3 LEDs conectados aos pinos 8, 9 e 10 para representar os bits (do menos significativo ao mais significativo).

  O sistema deve contar de 0 a 7 (binário 000 a 111) e repetir ciclicamente. Cada número deve ser exibido por 1 segundo.

  *Exemplo de sequência:*
  - 0 (000): todos apagados
  - 1 (001): apenas LED no pino 8 ligado
  - 2 (010): apenas LED no pino 9 ligado
  - 3 (011): LEDs nos pinos 8 e 9 ligados
  - ...até 7 (111)
]

#problem()[
  Crie uma barra de progresso visual usando 5 LEDs dispostos em linha (pinos 2, 3, 4, 5, 6).

  A barra deve:
  1. Preencher gradualmente: acenda o LED 2, depois 2 e 3, depois 2, 3 e 4, até todos os 5 LEDs estarem ligados
  2. Manter todos ligados por 1 segundo
  3. Esvaziar gradualmente: apague o LED 6, depois 5 e 6, até todos apagados
  4. Repetir o ciclo

  Cada etapa deve durar 300ms.

  *Desafio:* Adicione um efeito "carrinho de corrida" onde apenas um LED fica ligado por vez, movendo-se da esquerda para a direita e voltando.
]

#problem()[
  Implemente um semáforo de trânsito completo com temporização realista.

  Use 3 LEDs:
  - Verde no pino 11
  - Amarelo no pino 12
  - Vermelho no pino 13

  *Sequência e temporização:*
  - Verde: 5 segundos
  - Amarelo: 2 segundos
  - Vermelho: 5 segundos
  - Repetir ciclicamente

  Apenas um LED deve estar ligado por vez (sem sobreposição).
]

#problem()[
  Implemente um sistema de semáforo completo com semáforo de pedestres, incluindo sinal de alerta piscante.

  *Semáforo veicular (pinos 11, 12, 13):*
  - Verde: 6 segundos
  - Amarelo: 2 segundos
  - Vermelho: 6 segundos

  *Semáforo pedestre (pinos 8, 9):*
  - Vermelho: ligado quando veicular está verde ou amarelo
  - Verde: ligado quando veicular está vermelho

  *Funcionalidade especial - Alerta de transição:*
  Nos últimos 3 segundos do sinal verde do pedestre (ou seja, nos últimos 3 segundos do vermelho do veicular), o LED vermelho do veicular deve piscar alternando entre ligado e desligado a cada 500ms. Isso indica aos motoristas que o sinal vai abrir em breve.

  *Exemplo de ciclo completo:*
  1. Veicular verde (6s), pedestre vermelho
  2. Veicular amarelo (2s), pedestre vermelho
  3. Veicular vermelho (6s), pedestre verde
    - Nos últimos 3s: veicular vermelho pisca (0.5s ON, 0.5s OFF)
  4. Repetir
]
