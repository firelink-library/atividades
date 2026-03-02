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

