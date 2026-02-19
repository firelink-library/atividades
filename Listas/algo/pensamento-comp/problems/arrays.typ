#import "../../../../themes/inteli/lib.typ": *

= Arrays

#problem[
  Crie um programa que trabalhe com um array de 5 números inteiros. O programa
  deve solicitar ao usuário que digite os 5 valores, armazená-los no array e
  depois exibir os valores na ordem inversa (do último para o primeiro).

  Este exercício introduz conceitos fundamentais de manipulação de arrays:
  inicialização, acesso por índice e iteração em ordem reversa.

  *Exemplo de entrada*

  ```
  Digite 5 números inteiros:
  Número 1: 10
  Número 2: 20
  Número 3: 30
  Número 4: 40
  Número 5: 50
  ```

  *Exemplo de saída*

  ```
  Valores na ordem inversa: 50 40 30 20 10
  ```
]

#problem[
  Desenvolva um programa que calcule a média aritmética de 10 notas escolares.
  O programa deve solicitar as 10 notas ao usuário, armazená-las em um array
  e calcular a média final.

  *Exemplo de entrada*

  ```
  Digite 10 notas:
  Nota 1: 7.5
  Nota 2: 8.0
  Nota 3: 6.5
  Nota 4: 9.0
  Nota 5: 7.0
  Nota 6: 8.5
  Nota 7: 6.0
  Nota 8: 7.5
  Nota 9: 8.0
  Nota 10: 9.5
  ```

  *Exemplo de saída*

  ```
  Média aritmética: 7.75
  ```
]

#problem[
  Implemente um algoritmo de busca linear (sequential search) em um array.
  O programa deve ler 10 números inteiros em um array e, em seguida, solicitar
  um número $x$ para busca. O programa deve verificar se $x$ existe no array
  e informar sua posição (índice), ou indicar que não foi encontrado.

  A busca linear percorre o array elemento por elemento até encontrar o valor
  desejado ou chegar ao final. Sua complexidade é $O(n)$ no pior caso.

  *Exemplo de entrada*

  ```
  Digite 10 números: 5 12 3 8 21 7 15 2 9 18
  Digite o número a buscar: 15
  ```

  *Exemplo de saída*

  ```
  Número 15 encontrado na posição 6.
  ```

  *Exemplo de entrada 2*

  ```
  Digite 10 números: 5 12 3 8 21 7 15 2 9 18
  Digite o número a buscar: 100
  ```

  *Exemplo de saída 2*

  ```
  Número 100 não encontrado no array.
  ```
]

#problem[
  Trabalhe com matrizes bidimensionais criando um programa que processe uma
  matriz $3 times 3$ de números inteiros. O programa deve solicitar os 9
  valores ao usuário (linha por linha) e calcular a soma dos elementos da
  diagonal principal.

  A diagonal principal de uma matriz quadrada são os elementos onde o índice
  da linha é igual ao índice da coluna ($M[i][i]$).

  *Exemplo de entrada*

  ```
  Digite os elementos da matriz 3x3:
  Linha 0: 1 2 3
  Linha 1: 4 5 6
  Linha 2: 7 8 9
  ```

  *Exemplo de saída*

  ```
  Matriz digitada:
  1 2 3
  4 5 6
  7 8 9

  Diagonal principal: 1, 5, 9
  Soma da diagonal: 15
  ```
]

#problem[
  Implemente um programa que calcule o determinante de uma matriz $3 times 3$
  de números reais. O determinante é um valor escalar que fornece informações
  importantes sobre a matriz, como se ela é invertível ou não.

  Para uma matriz 3x3:

  $A = mat(a, b, c; d, e, f; g, h, i)$

  O determinante é calculado por:

  $det(A) = a(e i - f h) - b(d i - f g) + c(d h - e g)$

  Ou, expandindo:

  $det(A) = a e i + b f g + c d h - c e g - b d i - a f h$

  *Exemplo de entrada*

  ```
  Digite os elementos da matriz 3x3:
  Linha 0: 1 2 3
  Linha 1: 4 5 6
  Linha 2: 7 8 9
  ```

  *Exemplo de saída*

  ```
  Matriz:
  1 2 3
  4 5 6
  7 8 9

  Determinante: 0
  ```

  *Exemplo de entrada 2*

  ```
  Digite os elementos da matriz 3x3:
  Linha 0: 2 -1 3
  Linha 1: 1 4 2
  Linha 2: 0 3 1
  ```

  *Exemplo de saída 2*

  ```
  Matriz:
  2 -1 3
  1 4 2
  0 3 1

  Determinante: -21
  ```
]

#problem[
  Implemente um programa que realize a multiplicação de duas matrizes.
  gráfica, machine learning, processamento de imagens e muitas outras áreas.

  *Condição de validade*: A multiplicação $A times B$ só é possível quando o número de
  colunas da matriz $A$ é igual ao número de linhas da matriz $B$.

  Se $A$ tem dimensão $m times n$ e $B$ tem dimensão $n times p$, o resultado $C$
  terá dimensão $m times p$, onde cada elemento é calculado por:

  $ C[i][j] = sum_(k=0)^(n-1) A[i][k] times B[k][j] $

  O programa deve:

  1. Ler as dimensões das duas matrizes
  2. Verificar se a multiplicação é válida
  3. Se válida, ler os elementos e calcular o produto
  4. Se inválida, exibir mensagem de erro apropriada

  *Exemplo de entrada (válida)*

  ```
  Dimensões da matriz A (linhas colunas): 2 3
  Elementos da matriz A:
  Linha 0: 1 2 3
  Linha 1: 4 5 6

  Dimensões da matriz B (linhas colunas): 3 2
  Elementos da matriz B:
  Linha 0: 7 8
  Linha 1: 9 10
  Linha 2: 11 12
  ```

  *Exemplo de saída*

  ```
  Matriz A (2x3):
  1 2 3
  4 5 6

  Matriz B (3x2):
  7 8
  9 10
  11 12

  Resultado A x B (2x2):
  58 64
  139 154
  ```

]
*Exemplo de entrada (inválida)*

```
Dimensões da matriz A (linhas colunas): 2 3
Dimensões da matriz B (linhas colunas): 2 3
```

*Exemplo de saída*

```
Erro: Não é possível multiplicar uma matriz 2x3 por uma matriz 2x3.
O número de colunas de A (3) deve ser igual ao número de linhas de B (2).
```

*Algoritmo*: Utilize três loops aninhados:
- Loop externo: percorre as linhas de A
- Loop do meio: percorre as colunas de B
- Loop interno: calcula a soma dos produtos (produto escalar da linha i de A
  com a coluna j de B)
