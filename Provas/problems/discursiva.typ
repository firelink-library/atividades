#import "../../themes/inteli/lib.typ": *

== Questão discursiva

#set-problem-counter(1)

#problem[
  Roteadores de rede precisam gerenciar filas de pacotes para controlar o tráfego entre
  interfaces. Uma estratégia amplamente adotada é o FIFO (_First In, First Out_): pacotes são
  enfileirados na ordem de chegada e transmitidos nessa mesma ordem. Em situações de congestionamento,
  o roteador pode precisar descartar pacotes quando a fila atinge sua capacidade máxima.

  Um engenheiro implementou uma fila circular com vetor de tamanho `MAX` em linguagem C++. A estrutura
  e as operações são definidas abaixo, mas a função `enfileira` está incompleta:

  ```cpp
  const int MAX = 6;

  struct Fila {
      int dados[MAX];
      int inicio, fim, tamanho;
  };

  void inicializa(Fila& f) {
      f.inicio = f.fim = f.tamanho = 0;
  }

  // Retorna true se enfileirou com sucesso, false se a fila estava cheia
  bool enfileira(Fila& f, int val) {
      if (f.tamanho == MAX) return false;
      f.dados[f.fim] = val;
      /* LINHA A */
      f.tamanho++;
      return true;
  }

  int desenfileira(Fila& f) {
      if (f.tamanho == 0) return -1;
      int val = f.dados[f.inicio];
      f.inicio = (f.inicio + 1) % MAX;
      f.tamanho--;
      return val;
  }
  ```

  Com base nas informações apresentadas, faça o que se pede nos itens a seguir.

  #part(
    label: "a",
  )[Escreva a instrução que deve substituir o comentário `/* LINHA A */` para que o avanço do ponteiro `fim` respeite o comportamento circular da fila.
  ]

  #part(label: "b")[Simule a execução da seguinte sequência de operações sobre uma fila inicializada
    com `MAX = 6`:

    - `enfileira(10)`,

    - `enfileira(20)`,

    - `enfileira(30)`,

    - `desenfileira()`,

    - `desenfileira()`,

    - `enfileira(40)`,

    - `enfileira(50)`,

    - `enfileira(60)`,

    - `enfileira(70)`,

    - `enfileira(80)`.

    Ao final, indique os valores de `inicio`, `fim` e `tamanho`, e apresente o conteúdo do vetor `dados`.
  ]

  #part(label: "c")[Responda, em poucas palavras, quais são as diferenças entre
    uma implementação de fila simples e fila circular, ambas utilizando arrays.
    Sua comparação deve abordar *complexidade de operações* e *utilização eficiente
    de memória*.
  ]
]
