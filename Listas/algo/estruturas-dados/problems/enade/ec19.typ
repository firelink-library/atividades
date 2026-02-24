#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Engenharia de computação 2019(#link-style(
  "http://download.inep.gov.br/educacao_superior/enade/gabaritos/2019/engenharia_de_computacao.pdf",
  [gabarito],
))

#set-problem-counter(3)
#problem[
  *P2*
  Uma árvore binária de busca é uma árvore ordenada que pode apresentar prejuízos no desempenho
  de determinados algoritmos em função do desbalanceamento causado pela ordem de inserção dos
  elementos na estrutura. Uma árvore AVL é uma árvore binária de busca balanceada em que a diferença
  em módulo entre a altura da subárvore esquerda e a altura da subárvore direita de cada nó é, no máximo,
  de uma unidade.

  Nesse contexto, faça o que se pede nos itens a seguir.

  #part(label: "a")[Apresente uma árvore binária de busca balanceada com os elementos 2, 9, 15, 21, 27, 36 e 50 em
    que o nó raiz principal contém o elemento 21 e o balanceamento de cada nó seja no máximo uma
    unidade. (valor: 3,0 pontos)]
  #part(label: "b")[Considerando as inserções dos elementos 9, 27 e 50, nesta ordem, em uma árvore AVL inicialmente
    vazia, apresente a árvore resultante. (valor: 3,0 pontos)]
  #part(label: "c")[Considerando as inserções dos elementos 9, 27, 50, 15, 2, 21 e 36, nesta ordem, em uma árvore AVL
    inicialmente vazia, apresente a árvore resultante. (valor: 4,0 pontos)]
]

#set-problem-counter(4)
#problem[
  *P1*
  Na matemática, um produtório é definido como:

  $ product_(i=m)^n x_i = x_m times x_(m+1) times x_(m+2) times dots times x_(n-1) times x_n $

  Com base nessa equação, e considerando que $ x_i = i + 1/i $, com $ i > 0 $, faça o que se pede nos itens a seguir.

  #part(label: "a")[Escreva uma função iterativa, em linguagem C, que receba os parâmetros de limite inferior m e de
    limite superior n, calcule e retorne o resultado do produtório. (valor: 5,0 pontos).]
  #part(label: "b")[Escreva uma função recursiva, em linguagem C, que receba os parâmetros de limite inferior m e de
    limite superior n, calcule e retorne o resultado do produtório. (valor: 5,0 pontos).]
]

#set-problem-counter(9)
#problem[
  *P1*
  O MergeSort é um método de ordenação que combina dois vetores ordenados e cria um terceiro vetor
  maior também ordenado. O algoritmo abaixo apresenta essa ideia e combina os vetores a[lo..mid]
  e a[mid+1..hi] no vetor a[lo..hi].

  ```java
  public class MergeSort {
      private static Comparable[] aux;
      public static void merge(Comparable[] a, int lo, int mid, int hi) {
          int i = lo, j = mid+1;
          for (int k = lo; k <= hi; k++)
              aux[k] = a[k];
          for (int k = lo; k <= hi; k++) {
              if (i > mid)
                  a[k] = aux[j++];
              else if (j > hi )
                  a[k] = aux[i++];
              else if (aux[j].compareTo(aux[i]))
                  a[k] = aux[j++];
              else
                  a[k] = aux[i++];
          }
      }
      public static void sort(Comparable[] a) {
          aux = new Comparable[a.length];
          sort(a, 0, a.length - 1);
      }
      private static void sort(Comparable[] a, int lo, int hi) {
          //implementação
      }
  }
  ```

  SEDGEWICK, R.; WAYNE, K. _Algorithms_. 4. ed. Boston: Addison-Wesley, 2011 (adaptado).

  Considerando o código apresentado, a implementação do protótipo do método sort da classe MergeSort é

  #part(label: "A")[
    ```java
    if (hi == lo)
        return;
    int mid = lo + (hi - lo)/2;
    sort(a, lo, mid);
    sort(a, mid, hi);
    merge(a, lo, mid, hi);
    ```
  ]
  #part(label: "B")[
    ```java
    if (hi > lo)
        return;
    int mid = lo + (hi - lo)/2;
    sort(a, lo, mid);
    sort(a, mid, hi);
    merge(a, lo, mid, hi);
    ```
  ]
  #part(label: "C")[
    ```java
    if (hi <= lo)
        return;
    int mid = lo + (hi - lo)/2;
    sort(a, lo, mid);
    sort(a, mid, hi);
    merge(a, lo, mid, hi);
    ```
  ]
  #part(label: "D")[
    ```java
    if (hi > lo)
        return;
    int mid = lo + (hi - lo)/2;
    sort(a, lo, mid);
    sort(a, mid+1, hi);
    merge(a, lo, mid, hi);
    ```
  ]
  #part(label: "E")[
    ```java
    if (hi <= lo)
        return;
    int mid = lo + (hi - lo)/2;
    sort(a, lo, mid);
    sort(a, mid+1, hi);
    merge(a, lo, mid, hi);
    ```
  ]
]

#set-problem-counter(24)
#problem[
  *P2*
  Protocolos de roteamento de estado de enlace
  utilizam difusão para propagar informações de
  estado de enlace que são usadas para calcular rotas
  individuais. Entretanto, algumas técnicas provocam
  a transmissão de pacotes redundantes na rede.
  Idealmente, cada nó deveria receber apenas uma
  cópia do pacote de difusão.

  Uma técnica utilizada para resolver o problema da
  redundância de pacotes, é a difusão por spanning
  tree. Uma spanning tree de um grafo G = (N, E) é
  um grafo G' = (N, E') tal que E' é um subconjunto
  de E, G' é conexo, não possui ciclos e contém todos
  os nós originais em G. Se cada enlace tiver um
  custo associado e o custo de uma árvore for a soma
  dos custos dos enlaces, então uma árvore cujo
  custo seja o mínimo entre todas as spanning trees
  do grafo é denominada uma spanning tree mínima.

  KUROSE, J. F.; ROSS, K. W. _Redes de computadores e a Internet:
  uma abordagem top-down_. 6. ed. São Paulo:
  Pearson Education do Brasil, 2013 (adaptado).

  Considere uma rede composta por 6 roteadores,
  designados pelas letras A, B, C, D, E e F, conectados
  conforme a seguinte tabela de custos de seus enlaces:

  #table(
    columns: (1fr, 1fr),
    align: center,
    table.header([Conexão], [Custo do enlace]),
    [A - B], [2],
    [A - C], [2],
    [B - C], [2],
    [B - D], [3],
    [C - D], [3],
    [C - E], [1],
    [C - F], [1],
    [D - F], [2],
    [E - F], [1],
  )

  Neste cenário, o custo da spanning tree mínima
  correspondente é, exatamente:

  #part(label: "A")[5.]
  #part(label: "B")[7.]
  #part(label: "C")[8.]
  #part(label: "D")[9.]
  #part(label: "E")[11.]
]

#set-problem-counter(25)
#problem[
  *P2*
  A linguagem Python não permite alguns tipos de otimização como, por exemplo, a recursão em cauda e,
  devido à sua natureza dinâmica, é impossível realizar esse tipo de otimização em tempo de compilação
  tal como em linguagens funcionais como Haskell ou ML.

  Disponível em: `http:/www.python-history.blogspot.com/2009/04/origins-of-pythons-functional-features.html`.
  Acesso: em 15 jun. 2019 (adaptado).

  O trecho de código a seguir, escrito em Python, realiza a busca binária de um elemento x em uma lista
  lst e a função binary_search tem código recursivo em cauda.

  ```python
  1 def binary_search(x, lst, low=None, high=None):
  2     if low == None : low = 0
  3     if high == None : high = len(lst)-1
  4     mid = low + (high - low) // 2
  5     if low > high :
  6         return None
  7     elif lst[mid] == x :
  8         return mid
  9     elif lst[mid] > x :
  10        return binary_search(x, lst, low, mid-1)
  11    else :
  12        return binary_search(x, lst, mid+1, high)
  ```

  Disponível em: `https://www.kylem.net/programming/tailcall.html`. Acesso em: 15 jun. 2019 (adaptado).

  Considerando esse trecho de código, avalie as afirmações a seguir.

  I. Substituindo-se o conteúdo da linha 10 por high = mid - 1 e substituindo-se o conteúdo da
  linha 12 por low = mid + 1, não se altera o resultado de uma busca.

  II. Envolvendo-se o código das linhas 4 a 12 em um laço while True, substituindo-se o conteúdo
  da linha 10 por high = mid - 1 e substituindo-se o conteúdo da linha 12 por low = mid + 1
  remove-se a recursão de cauda e o resultado da busca não é alterado.

  III. Substituindo-se o código da linha 10 por:
  ```python
  newhigh = mid-1
  return binary_search(x, lst, low, newhigh)
  ```
  e substituindo-se o código da linha 12 por:
  ```python
  newlow = mid+1
  return binary_search(x, lst, newlow, high)
  ```
  remove-se a recursão de cauda.

  IV. Substituindo-se o conteúdo das linhas 9 a 12 por
  ```python
  if lst[mid] > x :
      newlow = low
      newhigh = mid-1
  else:
      newlow = mid+1
      newhigh = high
  return binary_search(x, lst, newlow, newhigh)
  ```
  mantém-se o resultado da busca.

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[II e III, apenas.]
  #part(label: "C")[II e IV, apenas.]
  #part(label: "D")[I, III e IV, apenas.]
  #part(label: "E")[I, II, III e IV.]
]
