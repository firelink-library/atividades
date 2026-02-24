#import "../../../../themes/inteli/lib.typ": *

= Exercícios _sabor_ ENADE

== Múltipla escolha

#problem[
  Em sistemas operacionais, o mecanismo de chamadas de função depende de uma estrutura de dados
  fundamental para controlar o fluxo de execução: a pilha de execução (_call stack_). Toda vez que
  uma função é invocada, um novo _stack frame_ é empilhado contendo o endereço de retorno, os
  parâmetros e as variáveis locais. Ao retornar, o _frame_ é desempilhado e o controle volta ao
  ponto de chamada.

  Considere o trecho de código C a seguir, que manipula uma pilha implementada com vetor de
  capacidade máxima 5 e topo inicializado em -1:

  ```c
  void push(int *pilha, int *topo, int val) {
      if (*topo == 4) return;          // pilha cheia
      pilha[++(*topo)] = val;
  }

  int pop(int *pilha, int *topo) {
      if (*topo == -1) return -1;      // pilha vazia
      return pilha[(*topo)--];
  }

  int main() {
      int p[5], t = -1;
      push(p, &t, 10);
      push(p, &t, 20);
      push(p, &t, 30);
      pop(p, &t);
      push(p, &t, 40);
      push(p, &t, 50);
      push(p, &t, 60);   // (*)
      printf("%d %d\n", pop(p, &t), t);
      return 0;
  }
  ```

  Avalie as afirmações a seguir sobre o comportamento desse programa.

  I.  Na linha marcada com `(*)`, a operação de `push` com valor 60 é ignorada porque a pilha
  já está cheia.

  II. O valor impresso pela chamada a `printf` é `50 2`.

  III. Após a execução completa do `main`, o vetor `p` contém, nas posições 0 a 3,
  os valores `10, 20, 40, 50`, nessa ordem.

  IV. Se o vetor tivesse capacidade 6, o valor impresso seria `60 3`.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e IV.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, II e IV.]
  #part(label: "E")[I, III e IV.]
]
#text(fill: white)[Gabarito: D]

// ---

#problem[
  No desenvolvimento de um sistema de gerenciamento de pedidos para um e-commerce, a equipe de
  engenharia optou por utilizar uma lista simplesmente encadeada para armazenar os pedidos em
  aberto, uma vez que inserções e remoções ocorrem com frequência e a quantidade de pedidos varia
  dinamicamente. Cada nó da lista armazena o identificador do pedido e um ponteiro para o próximo nó.

  Analise o trecho de código C a seguir, que tenta remover o nó com um determinado valor da lista:

  ```c
  typedef struct No {
      int valor;
      struct No *prox;
  } No;

  void remove_valor(No **lista, int alvo) {
      No *atual = *lista;
      No *anterior = NULL;

      while (atual != NULL && atual->valor != alvo) {
          anterior = atual;
          atual = atual->prox;
      }

      if (atual == NULL) return;

      if (anterior == NULL)
          *lista = atual->prox;
      else
          anterior->prox = atual->prox;

      free(atual);
  }
  ```

  Considere uma lista com os nós `[5] -> [12] -> [7] -> [3] -> NULL` e avalie as afirmações
  a seguir sobre a função `remove_valor`.

  I.  Ao chamar `remove_valor(&lista, 5)`, o ponteiro `*lista` é atualizado corretamente para
  apontar para o nó de valor 12, e o nó removido é liberado com `free`.

  II. Ao chamar `remove_valor(&lista, 3)`, o nó com valor 3 é removido e o ponteiro `prox` do
  nó anterior (valor 7) passa a apontar para `NULL`.

  III. Se o valor alvo não existir na lista, a função causa comportamento indefinido por tentar
  liberar um ponteiro nulo.

  IV. A função aceita o endereço do ponteiro de cabeça (`No **lista`) para permitir que o nó
  cabeça seja removido sem necessidade de um nó sentinela.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e III.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, II e IV.]
  #part(label: "E")[I, III e IV.]
]
#text(fill: white)[Gabarito: D]

// ---

#problem[
  A recursão é um paradigma central na Ciência da Computação e serve de base para algoritmos
  clássicos como mergesort, busca binária e travessia de árvores. A análise de complexidade de
  algoritmos recursivos frequentemente envolve a resolução de relações de recorrência.
  Segundo CORMEN et al. (_Introduction to Algorithms_, MIT Press), o Teorema Mestre permite
  resolver recorrências da forma $T(n) = a dot T(n/b) + f(n)$ em três casos distintos (adaptado).

  Considere a função recursiva abaixo, escrita em linguagem C:

  ```c
  int f(int n) {
      if (n <= 1) return 1;
      return f(n / 2) + f(n / 2) + n;
  }
  ```

  I.  A recorrência que descreve o tempo de execução dessa função é
  $T(n) = 2T(n\/2) + Theta(n)$, cuja solução pelo Teorema Mestre é $T(n) = Theta(n log n)$.

  II. O número de chamadas recursivas realizadas até atingir o caso base cresce linearmente com $n$.

  III. Se a linha `return f(n / 2) + f(n / 2) + n` fosse substituída por
  `return f(n / 2) + n`, a recorrência passaria a ser $T(n) = T(n\/2) + Theta(n)$,
  cuja solução é $T(n) = Theta(n)$.

  IV. A função original possui altura de árvore de recursão igual a $floor(log_2 n)$ e,
  em cada nível $k$, o trabalho total realizado é $Theta(n)$.

  É correto apenas o que se afirma em

  #part(label: "A")[I e II.]
  #part(label: "B")[II e III.]
  #part(label: "C")[I e IV.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: D]

// ---

#problem[
  Sistemas de edição de texto, como processadores de palavras e ambientes de desenvolvimento integrado (IDEs),
  frequentemente implementam a funcionalidade de "desfazer" (_undo_) por meio de uma pilha que armazena o histórico
  de operações realizadas pelo usuário. A cada ação executada — digitação, exclusão, formatação —, um registro da
  operação é empilhado; quando o usuário solicita "desfazer", a operação mais recente é desempilhada e revertida.
  Essa arquitetura garante que as ações sejam desfeitas na ordem inversa em que foram realizadas, preservando a
  integridade do documento.

  Um desenvolvedor implementou uma pilha genérica em C utilizando um vetor de ponteiros para `void`, permitindo
  armazenar qualquer tipo de dado. A estrutura e algumas operações estão definidas abaixo:

  ```c
  typedef struct {
      void **dados;
      int topo;
      int capacidade;
  } Pilha;

  Pilha* criar_pilha(int cap) {
      Pilha *p = malloc(sizeof(Pilha));
      p->dados = malloc(cap * sizeof(void*));
      p->topo = -1;
      p->capacidade = cap;
      return p;
  }

  int empilhar(Pilha *p, void *elem) {
      if (p->topo == p->capacidade - 1) return 0;
      p->dados[++(p->topo)] = elem;
      return 1;
  }

  void* desempilhar(Pilha *p) {
      if (p->topo == -1) return NULL;
      return p->dados[(p->topo)--];
  }
  ```

  A respeito dessa implementação, avalie as seguintes afirmações.

  I. A operação `empilhar` possui complexidade de tempo $O(1)$ no pior caso, independentemente do tipo de dado armazenado.

  II. Quando `p->topo` vale `-1`, a pilha está cheia, pois não há posições disponíveis no vetor.

  III. A liberação completa da memória alocada para a pilha requer duas chamadas a `free`: uma para o vetor `dados` e outra para a estrutura `Pilha`.

  IV. Se a pilha for redimensionada dinamicamente quando estiver cheia (dobrando a capacidade), o tempo amortizado por operação de empilhar permanece $O(1)$.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[I e IV.]
  #part(label: "C")[II e III.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: D]

// ---

#problem[
  Em redes de computadores, roteadores utilizam filas para armazenar pacotes que aguardam transmissão.
  Quando um roteador recebe pacotes mais rapidamente do que consegue transmiti-los, os pacotes são
  enfileirados e processados na ordem de chegada (FIFO — _First In, First Out_). Uma implementação
  eficiente de filas em sistemas embarcados frequentemente emprega um vetor circular, que permite
  reutilizar posições liberadas sem a necessidade de deslocar elementos.

  Segundo KUROSE e ROSS (_Redes de Computadores e a Internet_, Pearson), o tamanho da fila de um
  roteador influencia diretamente o atraso de enfileiramento e a probabilidade de perda de pacotes
  (adaptado). Considere a seguinte implementação de uma fila circular em C:

  ```c
  #define MAX 5

  typedef struct {
      int pacotes[MAX];
      int frente, tras;
  } FilaRoteador;

  void inicializar(FilaRoteador *f) {
      f->frente = f->tras = 0;
  }

  int enfileirar(FilaRoteador *f, int pacote) {
      if ((f->tras + 1) % MAX == f->frente)
          return 0;  // fila cheia
      f->pacotes[f->tras] = pacote;
      f->tras = (f->tras + 1) % MAX;
      return 1;
  }

  int desenfileirar(FilaRoteador *f) {
      if (f->frente == f->tras)
          return -1;  // fila vazia
      int pacote = f->pacotes[f->frente];
      f->frente = (f->frente + 1) % MAX;
      return pacote;
  }
  ```

  Um analista de redes executa a seguinte sequência de operações sobre uma fila recém-inicializada:

  ```
  enfileirar(f, 100);
  enfileirar(f, 200);
  enfileirar(f, 300);
  desenfileirar(f);
  enfileirar(f, 400);
  enfileirar(f, 500);
  ```

  Assinale a alternativa que apresenta corretamente o estado final da fila.

  #part(label: "A")[`frente = 1`, `tras = 0`, e o vetor contém `100, 200, 300, 400, 500` nas posições 0 a 4.]
  #part(label: "B")[`frente = 1`, `tras = 5`, e o vetor contém `100, 200, 300, 400, 500` nas posições 0 a 4.]
  #part(
    label: "C",
  )[`frente = 1`, `tras = 0`, e o vetor contém `400, 500, 300, _, _` nas posições 0 a 4, onde `_` indica valor irrelevante.]
  #part(label: "D")[`frente = 0`, `tras = 4`, e o vetor contém `200, 300, 400, 500, _` nas posições 0 a 4.]
  #part(
    label: "E",
  )[`frente = 1`, `tras = 0`, e o vetor contém `_, 200, 300, 400, 500` nas posições 0 a 4, onde `_` indica valor irrelevante.]
]
#text(fill: white)[Gabarito: E]

// ---

#problem[
  Tipos Abstratos de Dados (TADs) são fundamentais para o desenvolvimento de software modular e reutilizável.
  Um TAD define um conjunto de operações sobre um tipo de dado, ocultando a representação interna dos dados
  e permitindo que implementações diferentes sejam intercambiáveis sem afetar o código cliente. Essa propriedade
  é conhecida como encapsulamento e é um dos pilares da programação orientada a objetos, embora também possa
  ser aplicada em linguagens procedurais como C.

  Considere que uma biblioteca de estruturas de dados oferece um TAD `Dicionario` com as seguintes operações
  na sua interface pública:

  ```c
  Dicionario* dic_criar();
  void dic_inserir(Dicionario *d, char *chave, int valor);
  int dic_buscar(Dicionario *d, char *chave);
  void dic_remover(Dicionario *d, char *chave);
  void dic_destruir(Dicionario *d);
  ```

  Dois programadores implementam esse TAD de formas diferentes: o primeiro utiliza uma lista encadeada
  simples com inserção ordenada pela chave; o segundo utiliza uma tabela hash com encadeamento separado.

  Avalie as afirmações a seguir sobre essas implementações e o conceito de TAD.

  I. A operação `dic_buscar` possui complexidade $O(n)$ na implementação com lista encadeada, onde $n$ é o número de pares chave-valor armazenados.

  II. Na implementação com tabela hash, a operação `dic_inserir` possui complexidade $O(1)$ no pior caso, desde que a função de hash seja bem distribuída.

  III. Se o código cliente chamar `dic_inserir` com uma chave já existente, o comportamento é indefinido, pois a especificação do TAD não define essa situação.

  IV. O código que utiliza o TAD pode ser compilado e executado corretamente com qualquer uma das duas implementações, desde que ambas respeitem a interface definida.

  É correto apenas o que se afirma em

  #part(label: "A")[I e IV.]
  #part(label: "B")[II e III.]
  #part(label: "C")[I, II e IV.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: A]

// ---

#problem[
  Aplicativos de edição de fotos para dispositivos móveis precisam processar imagens de alta resolução
  com restrições severas de memória. Um desenvolvedor criou uma função para aplicar um filtro de
  suavização em blocos de pixels representados por uma matriz alocada dinamicamente. O código-fonte
  está reproduzido abaixo:

  ```c
  typedef struct {
      int **pixels;
      int largura, altura;
  } Imagem;

  Imagem* carregar_imagem(int w, int h) {
      Imagem *img = malloc(sizeof(Imagem));
      img->pixels = malloc(h * sizeof(int*));
      for (int i = 0; i < h; i++)
          img->pixels[i] = malloc(w * sizeof(int));
      img->largura = w;
      img->altura = h;
      return img;
  }

  void aplicar_filtro(Imagem *img) {
      int **aux = malloc(img->altura * sizeof(int*));
      for (int i = 0; i < img->altura; i++)
          aux[i] = malloc(img->largura * sizeof(int));

      // processamento dos pixels...

      for (int i = 0; i < img->altura; i++)
          free(aux[i]);
      free(aux);
  }

  void processar_galeria(int n) {
      Imagem *galeria[n];
      for (int i = 0; i < n; i++) {
          galeria[i] = carregar_imagem(1920, 1080);
          aplicar_filtro(galeria[i]);
          salvar_arquivo(galeria[i]);
          free(galeria[i]);
      }
  }
  ```

  Durante a revisão de código, um colega identificou problemas de gerenciamento de memória. Assinale
  a alternativa que descreve corretamente o(s) vazamento(s) de memória presente(s) no código.

  #part(
    label: "A",
  )[Não há vazamento de memória, pois toda memória alocada em `carregar_imagem` é liberada em `processar_galeria` e toda memória alocada em `aplicar_filtro` é liberada antes do retorno.]
  #part(
    label: "B",
  )[Há vazamento de memória em `processar_galeria`, pois `free(galeria[i])` libera apenas a estrutura `Imagem`, mas não libera o vetor de ponteiros `img->pixels` nem os vetores de inteiros alocados para cada linha da matriz.]
  #part(
    label: "C",
  )[Há vazamento de memória em `aplicar_filtro`, pois o vetor `aux` não é liberado ao final da função, consumindo memória crescente a cada chamada.]
  #part(
    label: "D",
  )[Há vazamento de memória porque `malloc(h * sizeof(int*))` deveria ser `malloc(h * sizeof(int))`, causando alocação insuficiente e corrupção de memória.]
  #part(
    label: "E",
  )[Há vazamento de memória porque o vetor `galeria` não é liberado com `free(galeria)` ao final da função `processar_galeria`.]
]
#text(fill: white)[Gabarito: B]

// ---

#problem[
  Um portal de notícias processa milhões de acessos diários e precisa identificar rapidamente artigos
  duplicados em sua base de dados. O tempo de execução do algoritmo de deduplicação é crítico para a
  operação em tempo real do sistema. A equipe de engenharia analisa três algoritmos candidatos:

  - Algoritmo A: complexidade $Theta(n^2)$ no pior caso.
  - Algoritmo B: complexidade $Theta(n \l o g n)$ no pior caso.
  - Algoritmo C: complexidade $Theta(n)$ no caso médio, mas $Theta(n^2)$ no pior caso.

  O sistema atual processa aproximadamente $n = 10^5$ artigos por hora. A equipe estima que cada
  operação básica (comparação de identificadores) consome cerca de $1 \mu s$ ($10^{-6}$ segundos).

  Para atender ao requisito de processar todos os artigos em menos de 1 hora, o engenheiro responsável
  deve escolher o algoritmo adequado.

  I. O Algoritmo A consumiria aproximadamente $10^5$ segundos para processar $n = 10^5$ artigos,
  o que excede o limite de 1 hora (3600 segundos).

  II. O Algoritmo B é sempre preferível ao Algoritmo A, independentemente do tamanho da entrada,
  pois $Theta(n \l o g n)$ cresce mais lentamente que $Theta(n^2)$.

  III. O Algoritmo C pode ser adequado se a probabilidade de o pior caso ocorrer for muito baixa,
  mas exige garantias sobre a distribuição dos dados de entrada.

  IV. A notação assintótica $Theta$ fornece limites superior e inferior justos, permitindo prever
  com precisão o tempo absoluto de execução para qualquer valor de $n$.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e IV.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: A]

== Discursivas

#problem[
  Roteadores de rede precisam gerenciar filas de pacotes para controlar o tráfego entre
  interfaces. Uma estratégia amplamente adotada é o FIFO (_First In, First Out_): pacotes são
  enfileirados na ordem de chegada e transmitidos nessa mesma ordem. Em situações de congestionamento,
  o roteador pode precisar descartar pacotes quando a fila atinge sua capacidade máxima.

  Um engenheiro implementou uma fila circular com vetor de tamanho `MAX` em linguagem C. A estrutura
  e as operações são definidas abaixo, mas a função `enfileira` está incompleta:

  ```c
  #define MAX 6

  typedef struct {
      int dados[MAX];
      int inicio, fim, tamanho;
  } Fila;

  void inicializa(Fila *f) {
      f->inicio = f->fim = f->tamanho = 0;
  }

  // Retorna 1 se enfileirou com sucesso, 0 se a fila estava cheia
  int enfileira(Fila *f, int val) {
      if (f->tamanho == MAX) return 0;
      f->dados[f->fim] = val;
      /* LINHA A */
      f->tamanho++;
      return 1;
  }

  int desenfileira(Fila *f) {
      if (f->tamanho == 0) return -1;
      int val = f->dados[f->inicio];
      f->inicio = (f->inicio + 1) % MAX;
      f->tamanho--;
      return val;
  }
  ```

  Com base nas informações apresentadas, faça o que se pede nos itens a seguir.

  #part(label: "a")[Escreva a instrução que deve substituir o comentário `/* LINHA A */` para que o
    avanço do ponteiro `fim` respeite o comportamento circular da fila. Justifique por que o operador
    módulo é necessário nesse contexto. (valor: 3,0 pontos)]

  #part(label: "b")[Simule a execução da seguinte sequência de operações sobre uma fila inicializada
    com `MAX = 6`: `enfileira(10)`, `enfileira(20)`, `enfileira(30)`, `desenfileira()`,
    `desenfileira()`, `enfileira(40)`, `enfileira(50)`, `enfileira(60)`, `enfileira(70)`,
    `enfileira(80)`. Ao final, indique os valores de `inicio`, `fim` e `tamanho`, e apresente o
    conteúdo do vetor `dados`. (valor: 3,0 pontos)]

  #part(label: "c")[Explique a diferença entre uma fila implementada com vetor simples (não circular)
    e uma fila circular em relação ao aproveitamento de espaço de memória. Em seguida, descreva uma
    situação em que o uso da fila circular é imprescindível para evitar desperdício de memória.
    (valor: 4,0 pontos)]
]

// ---

#problem[
  Uma empresa de logística precisa ordenar, a cada fechamento de turno, um vetor com os
  identificadores numéricos de milhares de entregas realizadas no dia. A equipe de TI avalia
  dois algoritmos de ordenação baseados em comparação — _mergesort_ e _quicksort_ — antes de
  decidir qual adotar em produção. Ambos pertencem à classe dos algoritmos de divisão e conquista,
  mas diferem em garantias de desempenho, uso de memória auxiliar e comportamento em casos
  extremos.

  Considere as implementações canônicas de ambos os algoritmos para ordenar um vetor de $n$
  inteiros, sem otimizações adicionais (pivô sempre o último elemento no quicksort).

  Com base nas informações apresentadas, faça o que se pede nos itens a seguir.

  #part(label: "a")[Apresente a relação de recorrência do _mergesort_ e resolva-a utilizando o
    Teorema Mestre, indicando explicitamente qual caso do teorema se aplica. Em seguida, escreva a
    complexidade de tempo no melhor caso, no caso médio e no pior caso do _mergesort_.
    (valor: 3,0 pontos)]

  #part(label: "b")[Descreva o pior caso do _quicksort_ com pivô no último elemento e indique
    qual entrada o provoca. Escreva a relação de recorrência correspondente e sua solução assintótica.
    Explique como a escolha de pivô por mediana de três elementos mitiga esse problema.
    (valor: 3,0 pontos)]

  #part(label: "c")[Escreva em linguagem C a função `merge`, responsável por intercalar dois
    subvetores ordenados `v[ini..meio]` e `v[meio+1..fim]` em um único vetor ordenado. Sua
    implementação deve utilizar um vetor auxiliar e ter complexidade $Theta(n)$ no número de
    elementos intercalados. (valor: 4,0 pontos)]
]
