#import "../../../../themes/inteli/lib.typ": *

= Entradas digitais

#problem()[
  Implemente um contador de pressionamentos de botão com tratamento de debounce.

  Use um botão conectado ao pino 2 (com resistor de pull-up interno `INPUT_PULLUP`). O sistema deve contar quantas vezes o botão foi pressionado de forma confiável, eliminando o efeito "bounce" (trepidação mecânica do botão).

  *Requisitos:*
  - Incrementar o contador apenas uma vez a cada pressionamento completo (pressionar e soltar)
  - Enviar o valor atual do contador pela porta serial a cada pressionamento válido
  - Implementar debounce por software: aguardar pelo menos 50ms após detectar uma mudança de estado antes de considerar nova leitura válida

  *Dica:* Compare o estado atual do botão com o estado anterior. Só considere um novo pressionamento quando detectar a transição de HIGH (solto) para LOW (pressionado), respeitando o tempo de debounce.

  *Desafio:* Adicione um segundo botão no pino 3 que funcione como "decrementar". O primeiro botão incrementa o contador, o segundo decrementa (mínimo zero). Ambos devem ter debounce.
]

#problem()[
  Implemente o jogo Genius (Simon Says) usando LEDs e botões.

  *Hardware necessário:*
  - 4 LEDs coloridos nos pinos 8, 9, 10, 11
  - 4 botões correspondentes nos pinos 2, 3, 4, 5 (use `INPUT_PULLUP`)
  - Opcional: buzzer no pino 12 para sons

  *Funcionamento do jogo:*
  1. O Arduino gera uma sequência aleatória de cores (números de 0 a 3), começando com 1 elemento
  2. Mostra a sequência ao jogador acendendo os LEDs correspondentes (cada LED aceso por 500ms com intervalo de 300ms entre eles)
  3. Aguarda o jogador repetir a sequência pressionando os botões na ordem correta
  4. Se o jogador acertar toda a sequência: aumenta a dificuldade adicionando mais um elemento à sequência e volta ao passo 2
  5. Se o jogador errar: sinaliza game over (pisca todos os LEDs 3 vezes rapidamente), mostra a pontuação final pela serial e reinicia o jogo

  *Requisitos técnicos:*
  - Use um array para armazenar a sequência (máximo 20 elementos)
  - Gere números aleatórios com `random()`
  - Implemente debounce nos botões
  - Limite de tempo: o jogador tem até 3 segundos para pressionar cada botão da sequência
  - Feedback visual imediato: acenda o LED correspondente quando o botão for pressionado

  *Desafio:* Adicione os seguintes recursos:
  - Sons diferentes para cada cor usando `tone()` no buzzer (frequências: 262Hz, 294Hz, 330Hz, 349Hz)
  - Armazene e mostre a pontuação máxima (high score) pela serial ao final de cada partida
  - A velocidade do jogo aumenta conforme a sequência fica maior: até 5 elementos = 500ms, 6-10 elementos = 350ms, 11+ elementos = 200ms
]
