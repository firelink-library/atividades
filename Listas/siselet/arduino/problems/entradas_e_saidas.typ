#import "../../../../themes/inteli/lib.typ": *

= Juntando tudo

#problem()[
  Implemente um sistema de semáforo completo com botão de pedestre que altera a temporização padrão.

  *Hardware:*
  - Semáforo veicular: 3 LEDs (verde pino 11, amarelo pino 12, vermelho pino 13)
  - Semáforo pedestre: 2 LEDs (verde pino 8, vermelho pino 9)
  - Botão de pedestre no pino 2 (use `INPUT_PULLUP`)

  *Funcionamento padrão (sem botão pressionado):*
  - Veicular verde: 8 segundos
  - Veicular amarelo: 2 segundos
  - Veicular vermelho: 6 segundos
  - Pedestre verde durante todo o período vermelho do veicular

  *Quando o botão é pressionado:*
  - Se o semáforo veicular está verde: reduz o tempo restante para no máximo 3 segundos (ou muda imediatamente se já passaram mais de 5s do verde)
  - Se está amarelo: não altera (já está em transição)
  - Se está vermelho: não altera (já está favorável ao pedestre)

  *Dica:* Use variáveis para controlar o tempo restante do estado atual e permitir interrupção da temporização.

  *Desafio:* Reimplemente o sistema usando uma máquina de estados finitos. Defina um enum ou constantes para os estados (VEICULO_VERDE, VEICULO_AMARELO, VEICULO_VERMELHO_PISCA, PEDESTRE_VERDE) e uma função que gerencia as transições entre estados baseada no tempo decorrido e no estado do botão.
]

#problem()[
  Implemente um semáforo inteligente com sensores ultrassônicos que detectam presença de veículos e pedestres.

  *Hardware:*
  - Semáforo veicular: 3 LEDs (verde pino 11, amarelo pino 12, vermelho pino 13)
  - Semáforo pedestre: 2 LEDs (verde pino 8, vermelho pino 9)
  - Sensor ultrassônico HC-SR04 para veículos (TRIG pino 3, ECHO pino 4)
  - Sensor ultrassônico HC-SR04 para pedestres (TRIG pino 5, ECHO pino 6)

  *Funcionamento inteligente:*

  *Estado Padrão - Economia (sem carro e sem pedestre):*
  - Ambos os semáforos em vermelho piscando lentamente (0.5s ligado, 0.5s desligado)
  - Sensores monitorando continuamente

  *Modo Veículo Detectado (apenas carro < 30cm, sem pedestre):*
  - Muda automaticamente: veicular verde, pedestre vermelho
  - Permanece enquanto carro estiver presente (máximo 15 segundos)
  - Quando carro sai: amarelo (2s) → volta para economia

  *Modo Pedestre Detectado (apenas pedestre < 50cm, sem carro):*
  - Muda automaticamente: veicular vermelho, pedestre verde
  - Permanece enquanto pedestre estiver presente (mínimo 5s, máximo 10s)
  - Quando pedestre sai: volta para economia

  *Modo Ambos Detectados (carro e pedestre):*
  - Mesmo comportamento do botão pressionado no exercício anterior
  - Prioridade ao pedestre com temporização reduzida
  - Veicular verde máximo 3s após detectar pedestre → amarelo → pedestre verde

  *Dica:* Leia a distância dos sensores com `pulseIn()` no pino ECHO. Veículos geralmente estão a 10-30cm do sensor, pedestres a 30-100cm. Use `millis()` para temporizações não-bloqueantes.
]
