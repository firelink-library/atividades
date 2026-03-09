#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Bacharelado em ciência da computação 2017 (#link-style(
  "http://download.inep.gov.br/educacao_superior/enade/gabaritos/2017/03_Ciencia_da_Computacao_Bacharelado.pdf",
  [gabarito],
))

#set-problem-counter(3)
#problem[
  *P1*
  Listas lineares armazenam uma coleção de elementos. A seguir, é apresentada a declaração de uma lista simplesmente encadeada.

  ```c
  struct ListaEncadeada {
      int dado;
      struct ListaEncadeada *proximo;
  };
  ```

  Para imprimir os seus elementos da cauda para a cabeça (do final para o início) de forma eficiente, um algoritmo pode ser escrito da seguinte forma:

  ```c
  void mostrar(struct ListaEncadeada *lista) {
      if (lista != NULL) {
          mostrar(lista->proximo);
          printf("%d ", lista->dado);
      }
  }
  ```

  Com base no algoritmo apresentado, faça o que se pede nos itens a seguir.

  #part(label: "a")[Apresente a classe de complexidade do algoritmo, usando a notação Θ. (valor: 3,0 pontos)]
  #part(
    label: "b",
  )[Considerando que já existe implementada uma estrutura de dados do tipo pilha de inteiros — com as operações de empilhar, desempilhar e verificar pilha vazia — reescreva o algoritmo de forma não recursiva, mantendo a mesma complexidade. Seu algoritmo pode ser escrito em português estruturado ou em alguma linguagem de programação, como C, Java ou Pascal. (valor: 7,0 pontos)]
]

#pagebreak(weak: true)

#set-problem-counter(5)
#problem[
  *P2*
  A busca primeiro em profundidade é um algoritmo de exploração sistemática em grafos, em que as arestas são exploradas a partir do vértice v mais recentemente descoberto que ainda tem arestas inexploradas saindo dele. Quando todas as arestas de v são exploradas, a busca regressa para explorar as arestas que deixam o vértice a partir do qual v foi descoberto. Esse processo continua até que todos os vértices acessíveis a partir do vértice inicial sejam explorados.

  CORMEN, T. H.; LEISERSON, C. E.; RIVEST, R. L.; STEIN, C. _Introduction to algorithms_. 3. ed. Cambridge, Massachusetts: The MIT Press, 2009 (adaptado).

  Considere o grafo a seguir.

  #figure(image("../../assets/grafo_qd.png", height: 20%))

  Com base nas informações apresentadas, faça o que se pede nos itens a seguir.

  #part(
    label: "a",
  )[Mostre a sequência de vértices descobertos no grafo durante a execução de uma busca em profundidade com controle de estados repetidos. Para isso, utilize o vértice *r* como inicial. No caso de um vértice explorado ter mais de um vértice adjacente, utilize a ordem alfabética crescente como critério para priorizar a exploração. (valor: 7,0 pontos)]
  #part(
    label: "b",
  )[Faça uma representação da matriz de adjacências desse grafo, podendo os zeros ser omitidos nessa matriz. (valor: 3,0 pontos)]
]

#pagebreak(weak: true)

#set-problem-counter(9)
#problem[
  *P2*
  Uma árvore AVL é um tipo de árvore binária balanceada na qual a diferença entre as alturas de suas subárvores da esquerda e da direita não pode ser maior do que 1 para qualquer nó. Após a inserção de um nó em uma AVL, a raiz da subárvore de nível mais baixo no qual o novo nó foi inserido é marcada. Se a altura de seus filhos diferir em mais de uma unidade, é realizada uma rotação simples ou uma rotação dupla para igualar suas alturas.

  LAFORE, R. _Data structures & algorithms in Java_. Indianápolis: Sams Publishing, 2003 (adaptado).

  A seguir, é apresentado um exemplo de árvore AVL.

  #figure(image("../../assets/avl_enunciado.png", height: 30%))

  Pelo exposto no texto acima, após a inserção de um nó com valor 3 na árvore AVL exemplificada, é correto afirmar que ela ficará com a seguinte configuração:

  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    align: center,
    [
      #part(label: "A")[]
      #box(width: 80%, height: 130pt)[#image("../../assets/avl_a.png", width: 80%)]
    ],
    [
      #part(label: "B")[]
      #box(width: 80%, height: 130pt)[#image("../../assets/avl_b.png", width: 80%)]
    ],

    [
      #part(label: "C")[]
      #box(width: 80%, height: 130pt)[#image("../../assets/avl_c.png", width: 80%)]
    ],
    [
      #part(label: "D")[]
      #box(width: 80%, height: 130pt)[#image("../../assets/avl_d.png", width: 80%)]
    ],

    [
      #part(label: "E")[]
      #box(width: 80%, height: 130pt)[#image("../../assets/avl_e.png", width: 80%)]
    ],
    [],
  )
]

#pagebreak(weak: true)

#set-problem-counter(18)
#problem[
  *P1*
  O algoritmo a seguir recebe um vetor V de números inteiros e rearranja esse vetor de tal forma que seus elementos, ao final, estejam ordenados de forma crescente.

  ```
  01 void ordena(int *v, int n)
  02 {
  03     int i, j, chave;
  04     for(i = 1; i < n; i++)
  05     {
  06         chave = v[i];
  07         j = i - 1;
  08         while(j >= 0 && v[j] < chave)
  09         {
  10             v[j-1] = v[j];
  11             j = j - 1;
  12         }
  13         v[j+1] = chave;
  14     }
  15 }
  ```

  Considerando que nesse algoritmo há erros de lógica que devem ser corrigidos para que os elementos sejam ordenados de forma crescente, assinale a opção correta no que se refere às correções adequadas.

  #part(
    label: "A",
  )[A linha 04 deve ser corrigida da seguinte forma: `for(i = 1; i < n - 1; i++)` e a linha 13, do seguinte modo: `v[j - 1] = chave;`]
  #part(
    label: "B",
  )[A linha 04 deve ser corrigida da seguinte forma: `for(i = 1; i < n - 1; i++)` e a linha 07, do seguinte modo: `j = i + 1;`]
  #part(
    label: "C",
  )[A linha 07 deve ser corrigida da seguinte forma: `j = i + 1` e a linha 08, do seguinte modo: `while(j >= 0 && v[j] > chave)`]
  #part(
    label: "D",
  )[A linha 08 deve ser corrigida da seguinte forma: `while(j >= 0 && v[j] >= chave)` e a linha 10, do seguinte modo: `v[j + 1] = v[j];`]
  #part(
    label: "E",
  )[A linha 10 deve ser corrigida da seguinte forma: `v[j + 1] = v[j];` e a linha 13, do seguinte modo: `v[j - 1] = chave;`]
]

#pagebreak(weak: true)

#set-problem-counter(22)
#problem[
  *P2*
  Um país utiliza moedas de 1, 5, 10, 25 e 50 centavos. Um programador desenvolveu o método a seguir, que implementa a estratégia gulosa para o problema do troco mínimo. Esse método recebe como parâmetro um valor inteiro, em centavos, e retorna um _array_ no qual cada posição indica a quantidade de moedas de cada valor.

  ```java
  public static int[] troco(int valor){
      int[] moedas = new int[5];

      moedas[4] = valor / 50;
      valor = valor % 50;
      moedas[3] = valor / 25;
      valor = valor % 25;
      moedas[2] = valor / 10;
      valor = valor % 10;
      moedas[1] = valor / 5;
      valor = valor % 5;
      moedas[0] = valor;
      return(moedas);
  }
  ```

  Considerando o método apresentado, avalie as asserções a seguir e a relação proposta entre elas.

  I. O método guloso encontra o menor número de moedas para o valor de entrada, considerando as moedas do país.

  *PORQUE*

  II. Métodos gulosos sempre encontram a solução global ótima.

  A respeito dessas asserções, assinale a opção correta.

  #part(label: "A")[As asserções I e II são proposições verdadeiras, e a II é uma justificativa correta da I.]
  #part(label: "B")[As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.]
  #part(label: "C")[A asserção I é uma proposição verdadeira, e a II é uma proposição falsa.]
  #part(label: "D")[A asserção I é uma proposição falsa, e a II é uma proposição verdadeira.]
  #part(label: "E")[As asserções I e II são proposições falsas.]
]

#set-problem-counter(24)
#problem[
  *P2*
  A figura a seguir exibe um grafo que representa um mapa rodoviário, no qual os vértices representam cidades e as arestas representam vias. Os pesos indicam o tempo atual de deslocamento entre duas cidades.

  #figure(image("../../assets/grafo_novo.png", height: 20%))

  Considerando que os tempos de ida e volta são iguais para qualquer via, avalie as afirmações a seguir acerca desse grafo.

  I. Dado o vértice de origem *i*, o algoritmo Dijkstra encontra o menor tempo de deslocamento entre a cidade *i* e todas as demais cidades do grafo.

  II. Uma árvore geradora de custo mínimo gerada pelo algoritmo de Kruskal contém um caminho de custo mínimo cujo origem é *i* e cujo destino é *k*.

  III. Se um caminho de custo mínimo entre os vértices *i* e *k* contém o vértice *w*, então o subcaminho de origem *w* e destino *k* deve também ser mínimo.

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[II, apenas.]
  #part(label: "C")[I e III, apenas.]
  #part(label: "D")[II e III, apenas.]
  #part(label: "E")[I, II e III.]
]

#set-problem-counter(25)
#problem[
  *P1*
  A sequência de Fibonacci é uma sequência de números inteiros que começa em 1, a que se segue 1, e na qual cada elemento subsequente é a soma dos dois elementos anteriores. A função `fib` a seguir calcula o n-ésimo elemento da sequência de Fibonacci:

  ```c
  unsigned int fib (unsigned int n)
  {
      if (n < 2)
          return 1;
      return fib(n - 2) + fib(n - 1);
  }
  ```

  Considerando a implementação acima, avalie as afirmações a seguir.

  I. A complexidade de tempo da função `fib` é exponencial no valor de `n`.

  II. A complexidade de espaço da função `fib` é exponencial no valor de `n`.

  III. É possível implementar uma versão iterativa da função `fib` com complexidade de tempo linear no valor de `n` e complexidade de espaço constante.

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[II, apenas.]
  #part(label: "C")[I e III, apenas.]
  #part(label: "D")[II e III, apenas.]
  #part(label: "E")[I, II e III.]
]

#pagebreak(weak: true)

#set-problem-counter(33)
#problem[
  *P1*
  Considere a função recursiva F a seguir, que em sua execução chama a função G:

  ```c
  1  void F(int n) {
  2      if(n > 0) {
  3          for(int i = 0; i < n; i++) {
  4              G(i);
  5          }
  6          F(n/2);
  7      }
  8  }
  ```

  Com base nos conceitos de teoria da complexidade, avalie as afirmações a seguir.

  I. A equação de recorrência que define a complexidade da função F é a mesma do algoritmo clássico de ordenação _mergesort_.

  II. O número de chamadas recursivas da função F é Θ(log n).

  III. O número de vezes que a função G da linha 4 é chamada é O(n log n).

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[II, apenas.]
  #part(label: "C")[I e III, apenas.]
  #part(label: "D")[II e III, apenas.]
  #part(label: "E")[I, II e III.]
]
