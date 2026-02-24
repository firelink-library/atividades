#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Bacharelado em computação 2014 (#link-style(
  "http://download.inep.gov.br/educacao_superior/enade/gabaritos/2014/03_gab_computacao_bacharelado.pdf",
  [gabarito],
))

#set-problem-counter(3)
#problem[
  *P2*
  O jogo Sudoku consiste em uma matriz 9x9 dividida em 9 sub-matrizes 3x3, como mostrado na figura a seguir.

  #figure(image("../../assets/sudoku.png", height: 30%))

  A matriz está parcialmente preenchida com números de 1 a 9, e o objetivo do jogo é completar a matriz, de forma que cada linha, coluna e sub-matriz contenham todos os números de 1 a 9.

  A partir dessas informações, escreva um algoritmo recursivo baseado em retrocesso (backtracking) para resolver o jogo. A matriz foi transformada em um vetor V de 81 posições, contendo zeros nas posições que faltam para serem preenchidas. Considere que existem duas funções implementadas. A primeira função, NaoHaViolacao(x,i,V), retorna verdadeiro se a inserção do número x na posição i do vetor V não causa violação das restrições do jogo (número repetido em linha, coluna ou sub-matriz). A segunda função, Imprime (V), realiza a impressão do vetor V. Considere, ainda, que o algoritmo deve imprimir o vetor V com a solução encontrada, se esta existir. (valor: 10,0 pontos)

  *Observação:* Qualquer notação em português estruturado, de forma imperativa ou orientada a objetos pode ser utilizada, assim como em uma linguagem de alto nível, como Pascal, C ou Java.
]

#pagebreak(weak: true)

#set-problem-counter(5)
#problem[
  *P1*
  As técnicas de projeto de algoritmos são essenciais para que os desenvolvedores possam implementar software de qualidade. Essas técnicas descrevem os princípios que devem ser adotados para se projetar soluções algorítmicas para um dado problema. Entre as principais técnicas, destacam-se os projetos de algoritmos por tentativa e erro, divisão e conquista, programação dinâmica e algoritmos gulosos. Nesse contexto, faça o que se pede nos itens a seguir.

  #part(label: "a")[Descreva o que caracteriza o projeto de algoritmos por divisão e conquista. (valor: 6,0 pontos)]
  #part(
    label: "b",
  )[Apresente uma situação de uso da técnica de projeto de algoritmos por divisão e conquista. (valor: 4,0 pontos)]
]

#set-problem-counter(12)
#problem[
  *P1*
  Analise o custo computacional dos algoritmos a seguir, que calculam o valor de um polinômio de grau $n$, da forma: $P(x)=a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0$, onde os coeficientes são números de ponto flutuante armazenados no vetor $a[0..n]$, e o valor de $n$ é maior que zero. Todos os coeficientes podem assumir qualquer valor, exceto o coeficiente $a_n$ que é diferente de zero.

  Algoritmo 1:
  ```
  soma = a[0]
  Repita para i = 1 até n
    Se a[i] ≠ 0.0 então
      potência = x
      Repita para J = 2 até i
        potência = potência * x
      Fim repita
      soma = soma + a[i] * potência
    Fim se
  Fim repita
  Imprima(soma)
  ```

  Algoritmo 2:
  ```
  soma = a[n]
  Repita para i = n-1 até 0 passo -1
    soma = soma * x + a[i]
  Fim repita
  Imprima(soma)
  ```

  Com base nos algoritmos 1 e 2, avalie as asserções a seguir e a relação proposta entre elas.

  I. Os algoritmos possuem a mesma complexidade assintótica.

  PORQUE

  II. Para o melhor caso, ambos os algoritmos possuem complexidade $O(n).$

  A respeito dessas asserções, assinale a opção correta.

  #part(label: "A")[As asserções I e II são proposições verdadeiras, e a Il é uma justificativa correta da I.]
  #part(label: "B")[As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.]
  #part(label: "C")[A asserção I é uma proposição verdadeira, e a Il é uma proposição falsa.]
  #part(label: "D")[A asserção I é uma proposição falsa, e a Il é uma proposição verdadeira.]
  #part(label: "E")[As asserções I e II são proposições falsas.]
]

#set-problem-counter(13)
#problem[
  *P2*
  A figura a seguir apresenta uma árvore binária de pesquisa, que mantém a seguinte propriedade fundamental: o valor associado à raiz é sempre menor do que o valor de todos os nós da subárvore à direita e sempre maior do que o valor de todos os nós da subárvore à esquerda.

  #figure(image("../../assets/img_q13.png", height: 25%))

  I. A árvore possui a vantagem de realizar a busca de elementos de forma eficiente, como a busca binária em um vetor.

  II. A árvore está desbalanceada, pois a subárvore da esquerda possui um número de nós maior do que a subárvore da direita.

  III. Quando a árvore é percorrida utilizando o método de caminhamento pós-ordem, os valores são encontrados em ordem decrescente.

  IV. O número de comparações realizadas em função do número n de elementos na árvore em uma busca binária realizada com sucesso é $O(log\ n)$.

  É correto apenas o que se afirma em:

  #part(label: "A")[I e III.]
  #part(label: "B")[I e IV.]
  #part(label: "C")[II e III.]
  #part(label: "D")[I, II e IV.]
  #part(label: "E")[II, III e IV.]
]

#pagebreak(weak: true)

#set-problem-counter(16)
#problem[
  *P1*
  Uma pilha é uma estrutura de dados que armazena uma coleção de itens de dados relacionados e que garante o seguinte funcionamento: o último elemento a ser inserido é o primeiro a ser removido. É comum na literatura utilizar os nomes *push* e *pop* para as operações de inserção e remoção de um elemento em uma pilha, respectivamente. O seguinte trecho de código em linguagem C define uma estrutura de dados pilha utilizando um vetor de inteiros, bem como algumas funções para sua manipulação.

  ```c
  #include <stdlib.h>
  #include <stdio.h>
  typedef struct {
      int elementos[100];
      int topo;
  }pilha;

  pilha * cria_pilha() {
      pilha * p =malloc(sizeof(pilha));
      p->topo = -1;
      return pilha;
  }

  void push(pilha *p, int elemento) {
      if (p->topo >= 99)
          return;
      p->elementos[++p->topo] = elemento;
  }
  int pop(pilha *p) {
      int a = p->elementos[p->topo];
      p->topo--;
      return a;
  }
  ```

  O programa a seguir utiliza uma pilha.

  ```c
  int main() {
      pilha * p = cria_pilha();
      push(p, 2);
      push(p, 3);
      push(p, 4);
      pop(p);
      push(p, 2);
      int a = pop() + pop(p);
      push(p, a);
      a += pop(p);
      printf("%d", a);
      return 0;
  }
  ```

  A esse respeito, avalie as afirmações a seguir.

  I. A complexidade computacional de ambas funções push e pop é O(1).

  II. O valor exibido pelo programa seria o mesmo caso a instrução `a += pop(p);` fosse trocada por `a += a;`

  III. Em relação ao vazamento de memória (memory leak), é opcional chamar a função `free(p)`, pois o vetor usado pela pilha é alocado estaticamente.

  É correto o que se afirma em

  #part(label: "A")[I, apenas.]
  #part(label: "B")[II, apenas.]
  #part(label: "C")[I e II, apenas.]
  #part(label: "D")[II e III, apenas.]
  #part(label: "E")[I, II e III.]
]

#pagebreak(weak: true)

#set-problem-counter(23)
#problem[
  *P1*
  Qual o valor de retorno da função a seguir, caso n = 27?

  ```c
  int recursao (int n) {
      if (n <= 10) {
          return n * 2;
      }
      else {
          return recursao(recursao(n/3));
      }
  }
  ```

  #part(label: "A")[8.]
  #part(label: "B")[9.]
  #part(label: "C")[12.]
  #part(label: "D")[16.]
  #part(label: "E")[18.]
]
