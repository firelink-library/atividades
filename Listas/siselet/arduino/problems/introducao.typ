#import "../../../../themes/inteli/lib.typ": *

= Primeiros programas

#problem()[
  Escreva um programa que envie a mensagem "Olá, Mundo!" pela porta serial a cada 1 segundo. Use o Monitor Serial do Arduino IDE para visualizar a saída.

  *Código base:*
  ```cpp
  void setup() {
    Serial.begin(9600);
  }

  void loop() {
    Serial.println("Olá, Mundo!");
    delay(1000);
  }
  ```

  *Output esperado no Monitor Serial:*
  ```
  Olá, Mundo!
  Olá, Mundo!
  Olá, Mundo!
  ...
  ```
]

#problem()[
  Faça o LED onboard do Arduino (pino 13) piscar, ficando ligado por 1 segundo e desligado por 1 segundo, repetidamente.

  *Código base:*
  ```cpp
  const int LED_PIN = 13;

  void setup() {
    pinMode(LED_PIN, OUTPUT);
  }

  void loop() {
    digitalWrite(LED_PIN, HIGH);
    delay(1000);
    digitalWrite(LED_PIN, LOW);
    delay(1000);
  }
  ```

  *Extensão:* Modifique para piscar em padrões diferentes (3 piscadas rápidas, pausa, repete).
]

#problem()[
  Conecte um botão ao pino 2. Quando pressionado, envie "Botão pressionado!" pela serial.

  *Circuito:* Botão entre pino 2 e GND (usa pull-up interno).

  *Código base:*
  ```cpp
  const int BOTAO_PIN = 2;

  void setup() {
    Serial.begin(9600);
    pinMode(BOTAO_PIN, INPUT_PULLUP);
  }

  void loop() {
    if (digitalRead(BOTAO_PIN) == LOW) {
      Serial.println("Botão pressionado!");
      delay(200);
    }
  }
  ```

  *Desafio:* Conte quantas vezes o botão foi pressionado e mostre o contador.
]
