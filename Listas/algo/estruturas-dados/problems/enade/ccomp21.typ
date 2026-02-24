#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Bacharelado em ciência da computação 2021 (#link-style(
  "https://download.inep.gov.br/enade/provas_e_gabaritos/2021_GB_bacharelado_ciencia_computacao.pdf",
  [gabarito],
))

#set-problem-counter(5)
#problem[
  *P2*
  Um heap binário é um arranjo que pode ser
  visualizado como uma árvore binária, sendo que
  cada nó da árvore corresponde a um elemento
  do arranjo, como pode ser observado na figura
  a seguir.

  #figure(image("../../assets/arvore_tabela.png", height: 20%))

  Percebe-se que existem dois tipos de heaps:
  heaps máximo e heaps mínimo. O heap máximo
  é uma estrutura de dados que possibilita a
  consulta ou extração de forma eficiente do maior
  elemento de uma coleção. A propriedade de heap
  máximo especifica que um nó filho (no código
  calculado pelas funções left e right) tem sempre
  armazenado um valor menor ou igual ao seu pai.

  CORMEN, T. H.; LEISERSON, C. E.; RIVEST, R. L.; STEIN, C.
  _Introduction to Algorithms_. 3. ed. MIT Press and McGraw-Hill.
  p. 131-161, 2009 (adaptado).

  Considerando a implementação a seguir, o
  heapify é uma função auxiliar para reorganizar
  o arranjo (garantindo a propriedade de heap
  máximo em uma determinada posição do arranjo)
  e buildHeap é uma função que usa heapify
  para reorganizar todas as posições do arranjo
  (garantindo a propriedade de heap máximo para
  todos os elementos).

  ```c
  int left(int i) { return (2 * i + 1); }
  int right(int i) { return (2 * i + 2); }
  /* a - arranjo, n - número de elementos,
     i - posição do elemento que deve ser
     colocado em propriedade de heap */
  void heapify (int *a, int n, int i)
  {
      int e, d, max, aux;
      e = left(i);
      d = right(i);
      if (e < n && a[e] > a[i])
          max = e;
      else
          max = i;
      if (d < n && a[d] > a[max])
          max = d;
      if (max != i)
      {
          aux = a[i];
          a[i] = a[max];
          a[max] = aux;
          heapify(a, n, max);
      }
  }
  /* a - arranjo, n - número de elementos */
  void buildHeap(int *a, int n)
  {
      int i;
      for (i = (n-1)/2; i >= 0; i--)
          heapify(a, n, i);
  }
  ```

  De acordo com as informações apresentadas, faça o que se pede nos itens a seguir.

  #part(label: "a")[Como ficará o arranjo int a[ ] = {2, 5, 8 ,13, 21, 1, 3, 34} após a execução da
    função buildHeap(a, 8). (valor: 5,0 pontos)]
  #part(label: "b")[Apresente a complexidade de tempo no pior caso para a função heapify, use a notação O ou Q.
    (valor: 5,0 pontos)]
]

#set-problem-counter(20)
#problem[
  *P1*
  Observe o código abaixo escrito na linguagem C.

  ```c
  1  #include <stdio.h>
  2  #define TAM 10
  3  int funcaol(int vetor[], int v){
  4      int i;
  5      for (i = 0; i < TAM; i++){
  6          if (vetor[i] == v)
  7              return i;
  8      }
  9      return -1;
  10 }
  11 int funcao2(int vetor[], int v, int i, int f){
  12     int m = (i + f) / 2;
  13     if (v == vetor[m])
  14         return m;
  15     if (i >= f)
  16         return -1;
  17     if (v > vetor[m])
  18         return funcao2(vetor, v, m+1, f);
  19     else
  20         return funcao2(vetor, v, i, m-1);
  21 }
  22 int main(){
  23     int vetor[TAM] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19};
  24     printf("%d - %d", funcao1(vetor, 15), funcao2(vetor, 15, 0, TAM-1));
  25     return 0;
  26 }
  ```

  A respeito das funções implementadas, avalie as afirmações a seguir.

  I. O resultado da impressão na linha 24 é: 7 - 7.

  II. A função funcao1, no pior caso, é uma estratégia mais rápida do que a funcao2.

  III. A função funcao2 implementa uma estratégia iterativa na concepção do algoritmo.

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[III, apenas.]
  #part(label: "C")[I e II, apenas.]
  #part(label: "D")[II e III, apenas.]
  #part(label: "E")[I, II e III.]
]

#set-problem-counter(23)
#problem[
  *P2*
  O uso da estrutura de dados tipo Árvore Binária de Busca é uma técnica fundamental de programação.
  Uma árvore binária é um conjunto finito de elementos que está vazio ou é particionado em três
  subconjuntos, a saber: 1) raiz da árvore - elemento inicial (único), 2) subárvore da esquerda - se vista
  isoladamente compõe outra árvore e 3) subárvore da direita - se vista isoladamente compõe outra árvore.
  A árvore pode não ter qualquer elemento (árvore vazia). A definição de árvore é recursiva e, devido a
  isso, muitas operações sobre árvores binárias utilizam recursão. Sendo "A" a raiz de uma árvore binária
  e "B" a raiz de sua subárvore esquerda ou direita, é dito que "A" é pai de "B" e que "B" é filho de "A".
  Um elemento sem filhos é chamado de folha. A altura da árvore é o número de elementos encontrados
  no caminho descendente mais longo que liga a sua raiz até uma folha.

  Uma Árvore de Busca Binária é uma árvore binária especializada, na qual a informação que o elemento
  filho esquerdo possui é numericamente menor que a informação do elemento pai. De forma análoga,
  a informação que o elemento filho direito possui é numericamente maior ou igual à informação do
  elemento pai. O objetivo de organizar dados em Árvores Binárias de Busca é facilitar a tarefa de encontrar
  um determinado elemento. O percurso completo de uma árvore binária consiste em visitar todos os
  elementos desta árvore, segundo algum critério, a fim de processá-los. Três formas são bem conhecidas
  para a realização deste percurso: 1) pré-ordem, 2) em-ordem e 3) pós-ordem. A figura a seguir mostra um
  exemplo de árvore binária.

  #figure(image("../../assets/arvore_binaria.png", height: 20%))
  Figura – Exemplo de Árvore Binária

  LAUREANO, M. A. P. _Estrutura de Dados com Algoritmos_. São Paulo: Brasport, 2008. p. 126, 129, 136 (adaptado).

  Considerando o texto e a figura apresentados e que a seguinte lista de elementos numéricos:
  (27, 34, 40, 18, 23, 5, 25, 36, 10, 7, -2) seja totalmente transferida para uma estrutura de Árvore Binária de
  Busca, inicialmente vazia, elemento a elemento, da esquerda para a direita, assinale a alternativa correta.

  #part(label: "A")[A árvore resultante terá 5 níveis de altura, com 6 elementos à esquerda da raiz principal (inicial)
    e 4 elementos à direita.]
  #part(label: "B")[O percurso da árvore em Pré-ordem irá processar os elementos na seguinte ordem (do primeiro ao
    último): -2, 7, 10, 5, 25, 23, 18, 36, 40, 34, 27.]
  #part(label: "C")[O percurso da árvore em Em-ordem irá processar os elementos na seguinte ordem (do primeiro ao
    último): -2, 5, 7, 10, 18, 23, 25, 27, 34, 36, 40.]
  #part(label: "D")[O percurso da árvore em Pós-ordem irá processar os elementos na seguinte ordem (do primeiro ao
    último): 27, 18, 5, -2, 10, 7, 23, 25, 34, 40, 36.]
  #part(label: "E")[O número máximo de elementos que essa árvore poderá ter com 10 níveis será de 1 024 elementos.]
]

#set-problem-counter(32)
#problem[
  *P1*
  Existe um grande número de implementações para algoritmos de ordenação. Um dos fatores a serem
  considerados, por exemplo, é o número máximo e médio de comparações que são necessárias para
  ordenar um vetor com n elementos. Diz-se também que um algoritmo de ordenação é estável se ele
  preserva a ordem de elementos que são iguais. Isto é, se tais elementos aparecem na sequência ordenada
  na mesma ordem em que estão na sequência inicial. Analise o algoritmo abaixo, onde A é um vetor e
  "i, j, lo e hi" são índices do vetor:

  ```
  algoritmo ordena(A, lo, hi)
      se lo < hi então
          p := particao(A, lo, hi)
          ordena(A, lo, p - 1)
          ordena(A, p + 1, hi)

  algoritmo particao(A, lo, hi)
      pivot := A[hi]
      i := lo
      repita para j := lo até hi
          se A[j] < pivot entao
              troca A[i] com A[j]
              i := i + 1
      troca A[i] com A[hi]
      return i
  ```

  Com relação ao algoritmo apresentado, avalie as afirmações a seguir.

  I. O algoritmo precisa de um espaço adicional O(n) para a pilha de recursão.

  II. O algoritmo apresentado é um algoritmo de ordenação recursivo e estável.

  III. O algoritmo precisa, em média, de O(n log n) comparações para ordenar n itens.

  IV. O uso do primeiro elemento do vetor como "pivot" é mais eficiente que usar o último.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e IV.]
  #part(label: "C")[III e IV.]
  #part(label: "D")[I, II e III.]
  #part(label: "E")[I, II e IV.]
]

#set-problem-counter(34)
#problem[
  *P2*
  O algoritmo de Dijkstra para o problema do caminho mínimo em dígrafos com pesos utiliza uma fila
  de prioridades de vértices, na qual as prioridades são uma estimativa do custo final. A cada iteração,
  um vértice é retirado da fila, e os arcos que começam nesse vértice são analisados. Considere o seguinte
  grafo, no qual deseja-se conhecer o custo de um caminho mínimo para cada vértice, a partir do vértice D.
  Considere que -1 representa um custo "infinito", ou seja, nenhum caminho até o vértice foi até o
  momento descoberto.

  #figure(image("../../assets/grafo_dijkstra.png", height: 30%))

  Com base nas informações e no grafo apresentados, assinale a alternativa que representa a estimativa
  de custo após duas iterações do algoritmo.

  #part(label: "A")[A: 5 B: 6 C: 10 D: 0 E: 4 F: 1 G: -1]
  #part(label: "B")[A: 5 B: 9 C: -1 D: 0 E: 5 F: 1 G: -1]
  #part(label: "C")[A: 5 B: 9 C: -1 D: 0 E: 4 F: 1 G: 2]
  #part(label: "D")[A: 5 B: 7 C: 8 D: 0 E: 4 F: 1 G: 2]
  #part(label: "E")[A: 5 B: 6 C: 8 D: 0 E: 3 F: 1 G: 2]
]
