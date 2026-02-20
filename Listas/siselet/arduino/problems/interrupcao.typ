#import "../../../../themes/inteli/lib.typ": *

= Interrupções

#problem()[
  Implemente um sistema simples para aprender o conceito de interrupções externas.

  *Hardware:*
  - LED no pino 13
  - Botão no pino 2 (pino de interrupção externa INT0)

  *Funcionamento:*
  - No loop principal, o LED deve piscar normalmente (1 segundo ligado, 1 segundo desligado)
  - Configure uma interrupção externa no pino 2 para detectar borda de descida (FALLING)
  - Quando o botão for pressionado, a ISR (Interrupt Service Routine) deve:
    - Inverter imediatamente o estado do LED
    - Enviar "Interrupção detectada!" pela serial
  - O loop principal continua seu funcionamento normal após a interrupção ser atendida

  *Dica:* Declare a variável de estado do LED como `volatile` para garantir consistência entre a ISR e o loop principal. Use `attachInterrupt(digitalPinToInterrupt(2), nomeDaISR, FALLING)`.

  *Observação:* Observe como o LED responde instantaneamente ao botão, mesmo durante o delay() do loop principal.
]

#problem()[
  Reimplemente o semáforo com botão de pedestre usando interrupção externa.

  *Hardware:*
  - Semáforo veicular: 3 LEDs (verde pino 11, amarelo pino 12, vermelho pino 13)
  - Semáforo pedestre: 2 LEDs (verde pino 8, vermelho pino 9)
  - Botão de pedestre no pino 2 (use interrupção externa INT0)

  *Funcionamento:*
  - Mesma lógica do semáforo anterior: veicular verde (8s) → amarelo (2s) → vermelho (6s)
  - Configure o botão para usar interrupção no modo FALLING
  - Na ISR, apenas altere uma flag `volatile bool botaoPressionado` para true
  - No loop principal, verifique essa flag quando o semáforo estiver no estado verde
  - Se a flag estiver true: reduza o tempo restante do verde para no máximo 3 segundos

  *Vantagem:* O botão responde instantaneamente, mesmo durante os delays() do semáforo. Não perde nenhum pressionamento.

  *Desafio:* Implemente debounce por software na própria ISR. Use uma variável `volatile unsigned long ultimaInterrupcao` para armazenar o tempo da última interrupção válida. Na ISR, verifique se passaram pelo menos 200ms desde a última interrupção antes de considerar o pressionamento válido.
]
