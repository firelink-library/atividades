#import "../../../../themes/inteli/lib.typ": *

= Exercícios _sabor_ ENADE

== Múltipla escolha

#problem[
  Tipos Abstratos de Dados (TADs) são fundamentais para o desenvolvimento de software modular e reutilizável.
  Um TAD define um conjunto de operações sobre um tipo de dado, ocultando a representação interna dos dados
  e permitindo que implementações diferentes sejam intercambiáveis sem afetar o código cliente. Essa propriedade
  é conhecida como encapsulamento e é um dos pilares da programação orientada a objetos, embora também possa
  ser aplicada em linguagens procedurais como C.

  Considere que uma biblioteca de estruturas de dados oferece um TAD `ListaOrdenada` com as seguintes operações
  na sua interface pública:

  ```c
  typedef struct lista ListaOrdenada;

  ListaOrdenada* lista_criar();
  void lista_inserir(ListaOrdenada *l, int valor);   // mantém ordenado
  int lista_buscar(ListaOrdenada *l, int valor);       // retorna 1 se encontrou, 0 caso contrário
  void lista_remover(ListaOrdenada *l, int valor);
  int lista_tamanho(ListaOrdenada *l);
  void lista_destruir(ListaOrdenada *l);
  ```

  Dois programadores implementam esse TAD de formas diferentes: o primeiro utiliza um vetor dinâmico;
  o segundo utiliza uma lista simplesmente encadeada com inserção ordenada.

  Um cliente utiliza o TAD para armazenar identificadores de produtos em um sistema de estoque.
  Inicialmente, o sistema contém 1000 produtos cadastrados. O cliente executa as seguintes operações:

  1. Busca pelo produto com identificador 500.
  2. Insere um novo produto com identificador 750.
  3. Remove o produto com identificador 200.

  Assinale a alternativa que apresenta corretamente as complexidades de tempo dessas operações
  na implementação com *lista encadeada*, considerando que a busca sempre percorre a lista do início.

  #part(label: "A")[Busca: $O(1)$, Inserção: $O(n)$, Remoção: $O(n)$]
  #part(label: "B")[Busca: $O(n)$, Inserção: $O(n)$, Remoção: $O(n)$]
  #part(label: "C")[Busca: $O(n)$, Inserção: $O(1)$, Remoção: $O(1)$]
  #part(label: "D")[Busca: $O(log n)$, Inserção: $O(n)$, Remoção: $O(n)$]
  #part(label: "E")[Busca: $O(n)$, Inserção: $O(n log n)$, Remoção: $O(n)$]
]
#text(fill: white)[Gabarito: B]

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
      if (p->topo == p->capacidade - 1) return -1;
      p->dados[++(p->topo)] = elem;
      return 1;
  }

  void* desempilhar(Pilha *p) {
      if (p->topo == -1) return -1;
      return p->dados[(p->topo)--];
  }
  ```

  A respeito dessa implementação, avalie as seguintes afirmações.

  I. A operação `empilhar` possui complexidade de tempo $O(1)$ no pior caso, independentemente do tipo de dado armazenado.

  II. Quando `p->topo` vale `-1`, a pilha está cheia, pois não há posições disponíveis no vetor.

  III. A liberação completa da memória alocada para a pilha requer duas chamadas a `free`: uma para o vetor `dados` e outra para a estrutura `Pilha`.

  IV. Se a pilha for redimensionada dinamicamente quando estiver cheia (dobrando a capacidade), a complexidade por operação de empilhar permanece, na média, $O(1)$.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[I e IV.]
  #part(label: "C")[II e III.]
  #part(label: "D")[II, III e IV.]
  #part(label: "E")[I, III e IV.]
]
#text(fill: white)[Gabarito: E]

#problem[
  Em sistemas operacionais, o mecanismo de chamadas de função depende de uma estrutura de dados
  fundamental para controlar o fluxo de execução: a pilha de execução (_call stack_). Toda vez que
  uma função é invocada, um novo _stack frame_ é empilhado contendo o endereço de retorno, os
  parâmetros e as variáveis locais. Ao retornar, o _frame_ é desempilhado e o controle volta ao
  ponto de chamada.

  Considere o trecho de código C a seguir, que manipula uma pilha implementada com vetor de
  capacidade máxima 4 e topo inicializado em -1:

  ```c
  void push(int *pilha, int *topo, int val) {
      if (*topo == 3) return -1;        // pilha cheia
      pilha[++(*topo)] = val;
  }

  int pop(int *pilha, int *topo) {
      if (*topo == -1) return -1;      // pilha vazia
      return pilha[(*topo)--];
  }

  int main() {
      int p[4], t = -1;
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
  os valores `10, 20, 30, 50`, nessa ordem.

  IV. Se a pilha tivesse capacidade 5, o valor impresso seria `60 3`.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e IV.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, II e IV.]
  #part(label: "E")[I, III e IV.]
]
#text(fill: white)[Gabarito: D]

#problem[
  Calculadoras científicas modernas frequentemente utilizam a notação polonesa reversa (RPN — _Reverse Polish Notation_) para avaliar expressões aritméticas, eliminando a necessidade de parênteses e simplificando o processamento. Nessa notação, os operandos aparecem antes do operador correspondente; por exemplo, a expressão infixa `(3 + 4) * 5` torna-se `3 4 + 5 *` em RPN.

  A avaliação de expressões RPN é naturalmente implementada utilizando uma pilha: cada operando é empilhado, e quando um operador é encontrado, os dois operandos do topo são desempilhados, a operação é executada e o resultado é empilhado novamente. Segundo SEDGEWICK e WAYNE (_Algorithms_, Addison-Wesley), essa estratégia garante avaliação em tempo linear (adaptado).

  Considere a seguinte implementação em C de uma calculadora RPN que processa expressões com números inteiros de um dígito (0–9) e os operadores `+`, `-`, `*` e `/`:

  ```c
  typedef struct {
      int dados[100];
      int topo;
  } Pilha;

  void init(Pilha *p) { p->topo = -1; }
  void push(Pilha *p, int v) { p->dados[++(p->topo)] = v; }
  int pop(Pilha *p) { return p->dados[(p->topo)--]; }
  int vazia(Pilha *p) { return p->topo == -1; }

  int avaliar_rpn(char *expr) {
      Pilha p;
      init(&p);
      for (int i = 0; expr[i] != '\0'; i++) {
          char c = expr[i];
          if (c >= '0' && c <= '9') {
              push(&p, c - '0');
          } else if (c == '+' || c == '-' || c == '*' || c == '/') {
              int b = pop(&p);  // operando direito
              int a = pop(&p);  // operando esquerdo
              int res;
              switch (c) {
                  case '+': res = a + b; break;
                  case '-': res = a - b; break;
                  case '*': res = a * b; break;
                  case '/': res = a / b; break;
              }
              push(&p, res);
          }
      }
      return pop(&p);
  }
  ```

  Avalie as afirmações a seguir sobre essa implementação.

  I. A avaliação de uma expressão RPN válida com $n$ tokens (operandos e operadores) possui complexidade de tempo $Theta(n)$, pois cada token é processado exatamente uma vez com operações de pilha $O(1)$.

  II. Se a expressão de entrada for `9 9 9 9 9 9 9 9 9 9 + + + + + + + + +` (dez noves seguidos de nove adições), ocorrerá _stack overflow_ porque a pilha implementada suporta no máximo 100 elementos.

  III. A estrutura de pilha é suficiente para avaliar qualquer expressão RPN válida; não são necessárias estruturas auxiliares como filas ou listas encadeadas.

  IV. Na operação de subtração e divisão, a ordem dos operandos desempilhados não afeta o resultado final, pois as operações aritméticas são comutativas.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[II e IV.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: A]

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

#problem[
  Sistemas de arquivos frequentemente utilizam algoritmos recursivos para calcular o tamanho total
  de diretórios, percorrendo subdiretórios aninhados. A recursão é natural para essa tarefa porque
  a estrutura de diretórios é hierárquica e auto-similar: cada subdiretório pode conter arquivos
  e outros subdiretórios, exigindo o mesmo procedimento de processamento.

  Considere a seguinte função recursiva em C que calcula a soma dos elementos de um vetor:

  ```c
  int soma_vetor(int *v, int n) {
      if (n == 0) return 0;
      return v[n-1] + soma_vetor(v, n-1);
  }
  ```

  Avalie as afirmações a seguir sobre essa implementação.

  I. Para processar um vetor de $n$ elementos, a função realiza exatamente $n$ chamadas recursivas, uma para cada elemento do vetor.

  II. A recursão sempre é mais eficiente que a solução iterativa equivalente, pois elimina a necessidade de variáveis de controle.

  III. A quantidade de memória auxiliar utilizada é constante, pois não são alocados vetores ou estruturas adicionais.

  IV. A função processa os elementos do vetor da posição $n-1$ até a posição $0$, em ordem inversa.

  É correto apenas o que se afirma em

  #part(label: "A")[I e II.]
  #part(label: "B")[II e III.]
  #part(label: "C")[I e IV.]
  #part(label: "D")[I, II e III.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: C]

#problem[
  Algoritmos recursivos são frequentemente utilizados em jogos eletrônicos para gerar labirintos
  ou calcular caminhos. A recursão permite dividir problemas complexos em subproblemas menores
  e mais fáceis de resolver.

  Considere a seguinte função recursiva em C:

  ```c
  int f(int n) {
      if (n == 0) return 0;
      return 1 + f(n / 2);
  }
  ```

  Qual é o valor retornado pela chamada `f(16)`?

  #part(label: "A")[5]
  #part(label: "B")[4]
  #part(label: "C")[8]
  #part(label: "D")[16]
  #part(label: "E")[0]
]
#text(fill: white)[Gabarito: A]

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
  Sistemas de impressão em rede utilizam filas para gerenciar documentos enviados por múltiplos
  usuários. Quando um documento é enviado para a impressora, ele é enfileirado e processado
  na ordem de chegada (FIFO — _First In, First Out_).

  Considere a seguinte implementação de uma fila utilizando lista encadeada:

  ```
  estrutura No:
      inteiro valor
      No prox

  estrutura Fila:
      No inicio
      No fim

  função enfileirar(Fila f, inteiro v):
      novo = criar No
      novo.valor = v
      novo.prox = NULO
      se f.fim != NULO então
          f.fim.prox = novo
      f.fim = novo
      se f.inicio == NULO então
          f.inicio = novo

  função desenfileirar(Fila f) retorna inteiro:
      se f.inicio == NULO então
          retornar -1
      temp = f.inicio
      v = temp.valor
      f.inicio = f.inicio.prox
      se f.inicio == NULO então
          f.fim = NULO
      liberar temp
      retornar v
  ```

  Após executar: `enfileirar(f, 10)`, `enfileirar(f, 20)`, `enfileirar(f, 30)`,
  `desenfileirar(f)`, `enfileirar(f, 40)`, qual é o valor retornado pelo próximo
  `desenfileirar(f)`?

  #part(label: "A")[20]
  #part(label: "B")[10]
  #part(label: "C")[30]
  #part(label: "D")[40]
  #part(label: "E")[-1]
]
#text(fill: white)[Gabarito: A]

// ---

#problem[
  Filas circulares implementadas com vetores são amplamente utilizadas em sistemas embarcados
  devido à sua eficiência de memória. Em uma fila circular, quando o ponteiro de fim alcança
  o final do vetor, ele "dá a volta" e utiliza as posições liberadas no início.

  Considere uma fila circular implementada com as seguintes operações:

  ```
  constante inteiro TAM = 5
  vetor dados[TAM]
  inteiro frente, tras

  função inicializar():
      frente = 0
      tras = 0

  função enfileirar(inteiro v):
      se (tras + 1) mod TAM == frente então
          retornar "fila cheia"
      dados[tras] = v
      tras = (tras + 1) mod TAM

  função desenfileirar() retorna inteiro:
      se frente == tras então
          retornar "fila vazia"
      v = dados[frente]
      frente = (frente + 1) mod TAM
      retornar v
  ```

  Inicialmente: `frente = 0`, `tras = 0`

  Após a sequência de operações:
  - enfileirar(100) → enfileirar(200) → enfileirar(300)
  - desenfileirar()
  - enfileirar(400) → enfileirar(500)

  Quais são os valores de `frente` e `tras`, respectivamente?

  #part(label: "A")[1 e 0]
  #part(label: "B")[0 e 5]
  #part(label: "C")[1 e 5]
  #part(label: "D")[3 e 0]
  #part(label: "E")[0 e 0]
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

// ---

#problem[
  A ordenação de dados é uma operação fundamental em sistemas de gerenciamento de informações.
  Diferentes algoritmos de ordenação apresentam características distintas quanto à eficiência,
  estabilidade e uso de memória auxiliar.

  Considere os seguintes algoritmos de ordenação:

  - *Bubblesort*: percorre o vetor repetidamente, trocando elementos adjacentes fora de ordem.
  - *Mergesort*: divide o vetor ao meio, ordena recursivamente cada metade e intercala.
  - *Quicksort*: escolhe um pivô, particiona o vetor e ordena recursivamente as partições.
  - *Selectionsort*: encontra o menor elemento e o coloca na posição correta, repetindo.
  - *Insertionsort*: insere cada elemento na posição correta entre os já ordenados.

  Assinale a alternativa que associa corretamente cada algoritmo à sua característica.

  #part(label: "A")[Bubblesort é o mais eficiente para vetores grandes; Mergesort usa memória auxiliar constante.]
  #part(label: "B")[Quicksort tem complexidade O(n²) no melhor caso; Selectionsort é estável.]
  #part(
    label: "C",
  )[Mergesort tem complexidade O(n log n) em todos os casos; Bubblesort tem complexidade O(n²) em todos os casos.]
  #part(label: "D")[Insertionsort é eficiente para vetores quase ordenados; Quicksort não usa recursão.]
  #part(label: "E")[Selectionsort faz O(n²) comparações no pior caso; Mergesort ordena in-place.]
]
#text(fill: white)[Gabarito: C]

// ---

#problem[
  Um sistema de processamento de transações bancárias precisa ordenar registros de movimentação
  para geração de extratos. O volume médio é de 1000 registros por consulta.

  O desenvolvedor está avaliando dois algoritmos:

  - *Algoritmo X*: Insertionsort
  - *Algoritmo Y*: Quicksort

  Considere as seguintes afirmações sobre a escolha do algoritmo:

  I. Insertionsort é preferível quando os dados já estão quase ordenados.

  II. Quicksort sempre é mais rápido que Insertionsort para qualquer entrada.

  III. Insertionsort tem complexidade O(n) no melhor caso (vetor já ordenado).

  IV. Quicksort utiliza menos memória auxiliar que Insertionsort.

  Assinale a alternativa correta.

  #part(label: "A")[Apenas I está correta.]
  #part(label: "B")[I e III estão corretas.]
  #part(label: "C")[II e IV estão corretas.]
  #part(label: "D")[I, II e III estão corretas.]
  #part(label: "E")[Todas estão corretas.]
]
#text(fill: white)[Gabarito: B]

// ---

#problem[
  Sistemas de controle de estoque utilizam arrays para armazenar quantidades de produtos em
  diferentes depósitos. O acesso direto por índice permite consultas rápidas às quantidades
  disponíveis.

  Considere um array de 10 posições (índices 0 a 9) que armazena a quantidade de produtos
  em 10 depósitos diferentes. O array está inicializado com os seguintes valores:

  `[50, 30, 20, 80, 10, 60, 40, 90, 70, 25]`

  Após executar as seguintes operações:
  1. `array[3] = array[3] + 20`
  2. `array[7] = array[7] - 15`
  3. `array[0] = array[9] * 2`
  4. `array[5] = (array[1] + array[2]) / 2`

  Qual é o valor armazenado em `array[5]`?

  #part(label: "A")[25]
  #part(label: "B")[30]
  #part(label: "C")[40]
  #part(label: "D")[50]
  #part(label: "E")[25]
]
#text(fill: white)[Gabarito: E]

// ---

#problem[
  Um sistema de monitoramento de temperaturas registra leituras horárias em um array de
  24 posições (uma para cada hora do dia). O sistema precisa identificar padrões nos dados.

  Considere o seguinte array de temperaturas:

  `[22, 21, 20, 19, 18, 19, 21, 23, 25, 27, 29, 30, 31, 30, 28, 26, 24, 23, 22, 21, 20, 19, 18, 17]`

  Avalie as afirmações a seguir:

  I. A temperatura máxima do dia foi registrada no índice 12 (13ª hora).

  II. A temperatura mínima do dia foi registrada no índice 23 (última posição).

  III. O array apresenta temperaturas em ordem crescente das 0h às 5h, e em ordem decrescente das 12h às 23h.

  IV. A temperatura média das 6 primeiras horas (índices 0 a 5) é menor que a média das 6 últimas horas (índices 18 a 23).

  É correto apenas o que se afirma em

  #part(label: "A")[I e II.]
  #part(label: "B")[II e III.]
  #part(label: "C")[I, II e III.]
  #part(label: "D")[I, III e IV.]
  #part(label: "E")[II, III e IV.]
]
#text(fill: white)[Gabarito: C]

// ---

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
