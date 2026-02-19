#import "../../../../themes/inteli/lib.typ": *

= Laços de Repetição

#problem()[
  Escreva um programa em C++ que imprima os números de 1 a 10 na tela, um por linha, utilizando um laço de repetição.
]

#problem()[
  Escreva um programa em C++ que calcule e imprima a soma dos números pares de 1 a 100.
]

#problem[
  Crie um programa que receba um número inteiro N do usuário e exiba todos os
  números primos de 2 até N.

  Um número primo é aquele que possui exatamente dois divisores: 1 e ele mesmo.

  *Exemplo de entrada*

  ```
  Digite um número: 30
  ```

  *Exemplo de saída*

  ```
  Números primos até 30:
  2 3 5 7 11 13 17 19 23 29
  ```

  *Dica avançada*: Pesquise sobre o "Crivo de Eratóstenes", um algoritmo
  eficiente para encontrar todos os primos até N. Ele funciona marcando os
  múltiplos de cada número primo encontrado, eliminando-os da lista de candidatos.
]

#problem[
  Crie um programa que calcule o fatorial de um número N fornecido pelo usuário.

  O fatorial de N (representado como N!) é o produto de todos os números inteiros
  positivos de 1 até N:

  $ N! = 1 times 2 times 3 times ... times N $

  Por definição: $0! = 1$

  *Exemplo de entrada*

  ```
  Digite um número: 5
  ```

  *Exemplo de saída*

  ```
  5! = 120
  ```

  *Exemplo de entrada 2*

  ```
  Digite um número: 0
  ```

  *Exemplo de saída 2*

  ```
  0! = 1
  ```

  *Desafio extra*: Após resolver com um laço de repetição, pesquise sobre
  recursão e tente implementar uma versão recursiva do cálculo do fatorial.
  Uma função recursiva chama a si mesma com um valor menor até atingir o caso base.
]

#problem[
  Crie um programa que calcule o Máximo Divisor Comum (MDC) entre dois números
  inteiros positivos fornecidos pelo usuário.

  O MDC é o maior número que divide ambos os valores sem deixar resto.

  *Exemplo de entrada*

  ```
  Digite o primeiro número: 48
  Digite o segundo número: 18
  ```

  *Exemplo de saída*

  ```
  MDC(48, 18) = 6
  ```

  *Dica*: Utilize o Algoritmo de Euclides, que é muito eficiente:
  1. Divida o maior número pelo menor
  2. Se o resto for 0, o MDC é o menor número
  3. Se não, substitua o maior pelo menor e o menor pelo resto
  4. Repita até o resto ser 0
]

#problem[
  Crie um programa que calcule o N-ésimo termo da sequência de Fibonacci.

  A sequência de Fibonacci é definida da seguinte forma:
  - Os dois primeiros termos são: $F(0) = 0$ e $F(1) = 1$
  - Cada termo subsequente é a soma dos dois anteriores: $F(n) = F(n-1) + F(n-2)$

  A sequência começa: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

  *Exemplo de entrada*

  ```
  Digite o valor de N: 8
  ```

  *Exemplo de saída*

  ```
  Fibonacci(8) = 21
  ```

  *Exemplo de entrada 2*

  ```
  Digite o valor de N: 20
  ```

  *Exemplo de saída 2*

  ```
  Fibonacci(20) = 6765
  ```

  *Desafio extra*: Após resolver com um laço de repetição, implemente uma versão
  recursiva. Compare o desempenho de ambas as abordagens para valores grandes de N.
  Você notará que a versão recursiva fica muito lenta devido à repetição de cálculos.
]

#problem[
  Crie um programa que calcule o N-ésimo Número de Bernoulli.

  Os Números de Bernoulli são uma sequência de números racionais importantes em
  matemática, especialmente na teoria dos números e nas expansões de séries de Taylor.

  São definidos pela fórmula de recorrência:
  - $B_0 = 1$
  - Para $n >= 1$: $sum_(k=0)^n binom(n+1, k) B_k = 0$

  Os primeiros números de Bernoulli são:
  $B_0 = 1$, $B_1 = -1/2$, $B_2 = 1/6$, $B_4 = -1/30$, $B_6 = 1/42$, ...
  (todos os ímpares maiores que 1 são zero)

  *Exemplo de entrada*

  ```
  Digite o valor de N: 6
  ```

  *Exemplo de saída*

  ```
  B(6) = 1/42
  Valor aproximado: 0.0238095
  ```

  *Exemplo de entrada 2*

  ```
  Digite o valor de N: 10
  ```

  *Exemplo de saída 2*

  ```
  B(10) = 5/66
  Valor aproximado: 0.0757576
  ```

  *Dica*: Utilize a fórmula de recorrência calculando iterativamente. Para cada n,
  resolva a equação isolando $B_n$:
  $B_n = -1/(n+1) times sum_(k=0)^(n-1) binom(n+1, k) B_k$

  *Desafio extra*: Implemente uma versão que armazene os números de Bernoulli já
  calculados (memoização) para evitar recalcular valores repetidamente.
]

#problem[
  A *Transformada de Fourier* é uma das ferramentas matemáticas mais importantes
  da computação moderna. Ela permite decompor qualquer sinal complexo em uma
  soma de ondas senoidais simples, revelando as "frequências" que compõem o sinal.

  Crie um programa que aproxime uma onda quadrada usando a Série de Fourier.
  Uma onda quadrada pode ser aproximada pela soma de senos ímpares:

  $ f(x) = 4/pi times sum_(n=1,3,5...)^N (sin(n x))/n $

  Onde N é o número de harmônicos utilizados na aproximação.

  O programa deve:
  - Receber o número de harmônicos N
  - Calcular o valor da série em vários pontos de um período (por exemplo, de 0 a 2π)
  - Exibir os valores calculados

  *Exemplo de entrada*

  ```
  Digite o número de harmônicos: 5
  ```

  *Exemplo de saída (parcial)*

  ```
  x = 0.00: f(x) = 0.0000
  x = 0.31: f(x) = 0.9355
  x = 0.63: f(x) = 1.1781
  x = 0.94: f(x) = 1.1781
  ...
  ```

  *Desafio*: Aumente o número de harmônicos (N) e observe como a aproximação
  se torna mais próxima de uma onda quadrada perfeita. O que acontece próximo
  aos pontos de descontinuidade? (Este fenômeno é conhecido como *Efeito Gibbs*)
]
