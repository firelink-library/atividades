#import "../../../../themes/inteli/lib.typ": *

= Ordenação

#problem[
  Crie um programa em C++ que implemente o Bubble Sort para ordenar um array de
  inteiros em ordem crescente.

  *Pseudo-código*

  ```
  para i de 0 até n-2:
      para j de 0 até n-i-2:
          se A[j] > A[j+1]:
              trocar(A[j], A[j+1])
  ```

  *Exemplo de entrada*

  ```
  Digite o tamanho do array: 6
  Digite os elementos:
  Elemento 1: 64
  Elemento 2: 34
  Elemento 3: 25
  Elemento 4: 12
  Elemento 5: 22
  Elemento 6: 11
  ```

  *Exemplo de saída*

  ```
  Array original: 64 34 25 12 22 11
  Array ordenado: 11 12 22 25 34 64
  Total de comparações: 15
  Total de trocas: 9
  ```
]

#pagebreak(weak: true)

#problem[
  Crie um programa em C++ que implemente o Selection Sort para ordenar um array
  de inteiros.

  *Pseudo-código*

  ```
  para i de 0 até n-1:
      min = i
      para j de i+1 até n-1:
          se A[j] < A[min]:
              min = j
      se min ≠ i:
          trocar(A[i], A[min])
  ```

  *Exemplo de entrada*

  ```
  Digite o tamanho do array: 5
  Digite os elementos:
  Elemento 1: 29
  Elemento 2: 10
  Elemento 3: 14
  Elemento 4: 37
  Elemento 5: 13
  ```

  *Exemplo de saída*

  ```
  Array original: 29 10 14 37 13
  Passo 1: Encontrou menor 10, trocou com posição 0: 10 29 14 37 13
  Passo 2: Encontrou menor 13, trocou com posição 1: 10 13 14 37 29
  Passo 3: Encontrou menor 14, trocou com posição 2: 10 13 14 37 29
  Passo 4: Encontrou menor 29, trocou com posição 3: 10 13 14 29 37
  Array ordenado: 10 13 14 29 37
  ```
]

#pagebreak(weak: true)

#problem[
  Crie um programa em C++ que implemente o Insertion Sort para ordenar um array
  de inteiros.

  *Pseudo-código*

  ```
  para i de 1 até n-1:
      chave = A[i]
      j = i - 1
      enquanto j ≥ 0 e A[j] > chave:
          A[j+1] = A[j]
          j = j - 1
      A[j+1] = chave
  ```

  *Exemplo de entrada*

  ```
  Digite o tamanho do array: 6
  Digite os elementos:
  Elemento 1: 12
  Elemento 2: 11
  Elemento 3: 13
  Elemento 4: 5
  Elemento 5: 6
  Elemento 6: 2
  ```

  *Exemplo de saída*

  ```
  Array original: 12 11 13 5 6 2
  Inserindo 11: 11 12 13 5 6 2
  Inserindo 13: 11 12 13 5 6 2
  Inserindo 5: 5 11 12 13 6 2
  Inserindo 6: 5 6 11 12 13 2
  Inserindo 2: 2 5 6 11 12 13
  Array ordenado: 2 5 6 11 12 13
  ```
]

#pagebreak(weak: true)

#problem[
  Crie um programa em C++ que implemente o Merge Sort.

  *Pseudo-código*

  ```
  mergeSort(A, esq, dir):
      se esq < dir:
          meio = (esq + dir) / 2
          mergeSort(A, esq, meio)
          mergeSort(A, meio+1, dir)
          merge(A, esq, meio, dir)

  merge(A, esq, meio, dir):
      // Combinar dois subarrays ordenados
  ```

  *Exemplo de entrada*

  ```
  Digite o tamanho do array: 8
  Digite os elementos:
  Elemento 1: 38
  Elemento 2: 27
  Elemento 3: 43
  Elemento 4: 3
  Elemento 5: 9
  Elemento 6: 82
  Elemento 7: 10
  Elemento 8: 50
  ```

  *Exemplo de saída*

  ```
  Array original: 38 27 43 3 9 82 10 50
  Dividindo: [38 27 43 3] [9 82 10 50]
  Dividindo: [38 27] [43 3]
  Dividindo: [38] [27]
  Mesclando [27 38]
  Dividindo: [43] [3]
  Mesclando [3 43]
  Mesclando [3 27 38 43]
  Dividindo: [9 82] [10 50]
  Dividindo: [9] [82]
  Mesclando [9 82]
  Dividindo: [10] [50]
  Mesclando [10 50]
  Mesclando [9 10 50 82]
  Mesclando [3 9 10 27 38 43 50 82]
  Array ordenado: 3 9 10 27 38 43 50 82
  ```
]

#problem[
  Crie um programa em C++ que implemente o Quick Sort.

  *Pseudo-código*

  ```
  quickSort(A, esq, dir):
      se esq < dir:
          p = particionar(A, esq, dir)
          quickSort(A, esq, p-1)
          quickSort(A, p+1, dir)

  particionar(A, esq, dir):
      pivô = A[(esq + dir) / 2]
      // Particionar ao redor do pivô
  ```

  *Exemplo de entrada*

  ```
  Digite o tamanho do array: 7
  Digite os elementos:
  Elemento 1: 25
  Elemento 2: 13
  Elemento 3: 6
  Elemento 4: 42
  Elemento 5: 17
  Elemento 6: 8
  Elemento 7: 30
  ```

  *Exemplo de saída*

  ```
  Array original: 25 13 6 42 17 8 30
  Particionando [25 13 6 42 17 8 30], pivô: 17
  Esquerda: [13 6 8] | Direita: [25 42 30]
  Particionando [13 6 8], pivô: 6
  Esquerda: [] | Direita: [13 8]
  Particionando [13 8], pivô: 8
  Esquerda: [] | Direita: [13]
  Ordenado: [6 8 13]
  Particionando [25 42 30], pivô: 42
  Esquerda: [25 30] | Direita: []
  Particionando [25 30], pivô: 30
  Esquerda: [25] | Direita: []
  Ordenado: [25 30 42]
  Array ordenado: 6 8 13 17 25 30 42
  ```
]

