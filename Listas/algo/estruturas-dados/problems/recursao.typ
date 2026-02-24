#import "../../../../themes/inteli/lib.typ": *

= Recursão

#problem[
  Crie um programa em C++ que resolva o problema das Torres de Hanoi. O objetivo é mover N discos de tamanhos diferentes do pino A (origem) para o pino C (destino), usando o pino B como auxiliar.

  *Configuração inicial:*
  - Pino A: N discos empilhados, do maior (base) ao menor (topo)
  - Pino B: vazio
  - Pino C: vazio

  #figure(image("../assets/hanoi.png"))

  *Regras:*
  1. Mover apenas um disco por vez
  2. Nunca colocar um disco maior sobre um menor
  3. Usar o pino B como auxiliar quando necessário

  *Estratégia recursiva:*
  Para mover n discos de Origem para Destino usando Auxiliar:
  1. Mover n-1 discos de Origem para Auxiliar (usando Destino)
  2. Mover o disco n (maior) de Origem para Destino
  3. Mover n-1 discos de Auxiliar para Destino (usando Origem)

  *Pseudo-código*

  ```
  hanoi(n, origem, destino, auxiliar):
      se n == 1:
          imprime "Disco 1: origem → destino"
      senão:
          hanoi(n-1, origem, auxiliar, destino)
          imprime "Disco n: origem → destino"
          hanoi(n-1, auxiliar, destino, origem)
  ```

  O programa deve:
  - Receber o número de discos (N)
  - Implementar a função recursiva `hanoi(n, origem, destino, auxiliar)`
  - Exibir cada movimento no formato "Disco X: A → C"
  - Mostrar o número total de movimentos (2^N - 1)

  *Exemplo de entrada*

  ```
  Número de discos: 3
  ```

  *Exemplo de saída*

  ```
  Resolvendo Torres de Hanoi com 3 discos:

  Movimentos:
  Disco 1: A → C
  Disco 2: A → B
  Disco 1: C → B
  Disco 3: A → C
  Disco 1: B → A
  Disco 2: B → C
  Disco 1: A → C

  Total de movimentos: 7
  ```
]

#problem[
  Crie um programa em C++ que gere todas as permutações de uma string usando recursão e backtracking. O programa deve trocar caracteres e gerar todas as combinações possíveis.

  O programa deve:
  - Receber uma string
  - Implementar a função recursiva `permutar(str, inicio, fim)`
  - Trocar caracteres e fazer chamadas recursivas para gerar permutações
  - Exibir todas as permutações encontradas

  *Exemplo de entrada*

  ```
  String: ABC
  ```

  *Exemplo de saída*

  ```
  Permutações:
  ABC
  ACB
  BAC
  BCA
  CAB
  CBA

  Total: 6 permutações
  ```
]

#problem[
  Crie um programa em C++ que implemente duas funções recursivas para manipulação de números inteiros: soma dos dígitos e inversão do número.

  O programa deve implementar:
  - `somaDigitos(n)`: retorna a soma de todos os dígitos do número
  - `inverterNumero(n)`: retorna o número com os dígitos na ordem inversa

  *Exemplo de entrada*

  ```
  Número: 1234
  ```

  *Exemplo de saída*

  ```
  Soma dos dígitos: 10
  (1 + 2 + 3 + 4 = 10)

  Número invertido: 4321
  (1234 → 4321)
  ```

  *Exemplo de entrada 2*

  ```
  Número: 987
  ```

  *Exemplo de saída 2*

  ```
  Soma dos dígitos: 24
  (9 + 8 + 7 = 24)

  Número invertido: 789
  (987 → 789)
  ```
]

