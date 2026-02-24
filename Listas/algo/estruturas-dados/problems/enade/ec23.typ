#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Engenharia de computação 2023(#link-style(
  "https://download.inep.gov.br/enade/provas_e_gabaritos/2023_GB_engenharia_da_computacao.pdf",
  [gabarito],
))

#set-problem-counter(2)
#problem[
  *P1*
  Considere que uma rede de varejo resolva consolidar a base de dados de suas M lojas, o que resulta em
  uma tabela X não ordenada com N registros de clientes, possivelmente repetidos. Devido à necessidade
  de se criar uma tabela Y contendo os clientes da tabela X com as repetições eliminadas, cogita-se utilizar
  dois possíveis algoritmos, os quais são apresentados a seguir.

  Algoritmo A, que executa as seguintes ações:
  1. Cria uma tabela Y inicialmente vazia;
  2. Percorre a tabela X, cliente por cliente, verificando se cada um deles já está na tabela Y. Caso não esteja,
    insere na tabela Y o cliente que está faltando.

  Algoritmo B, que executa as seguintes ações:
  1. Cria uma tabela Y inicialmente vazia;
  2. Ordena a tabela X usando o algoritmo quicksort;
  3. Insere, na tabela Y, o cliente da primeira posição da tabela X;
  4. Percorre a tabela X, cliente por cliente, a partir do segundo cliente, verificando se cada cliente é
    igual ao anterior. Caso não seja, insere o cliente na tabela Y.

  Como resultado das ações tanto do algoritmo A quanto do algoritmo B, a tabela Y gerada ao final
  conterá os clientes da tabela X com as repetições eliminadas.

  A partir dessas informações, observe o código em linguagem C apresentado a seguir.

  ```c
  void quicksort(int *v, int ini, int fim) {
      // v é o vetor a ser ordenado
      // ini é o índice do primeiro elemento a ser ordenado
      // fim é o índice do último elemento a ser ordenado
      if(ini < fim) {
          x = particiona(v, ini, fim,(ini+fim)/2);
          // atribuir os valores para a, b, c e d
          quicksort(v,a,b);
          quicksort(v,c,d);
      }
  }

  int particiona (int *vetor, int ini, int fim, int pivot){
      // implementar uma função que reorganiza o vetor e retorna a posição
      // final x do pivot. Ao final do processo, os elementos menores ou iguais a
      // vetor[pivot] devem ter índice menor do que x; os elementos maiores que
      // vetor[pivot] devem ter índice maior do que x.
  }

  void troca (int *vetor, int i, int j) {
      // função auxiliar que permuta os conteúdos das posições i e j do vetor
      aux = vetor[i];
      vetor[i] = vetor[j];
      vetor[j] = aux;
  }
  ```

  Com base nos dados apresentados, faça o que se pede nos itens a seguir.

  #part(label: "a")[Determine o número máximo de comparações executadas no passo 2 do algoritmo A.
    (valor: 2,0 pontos)]
  #part(label: "b")[Determine o número máximo de comparações executadas no passo 4 do algoritmo B. (valor: 2,0 pontos)]
  #part(label: "c")[Na implementação recursiva do programa apresentado, quais são os valores dos parâmetros a, b,
    c e d? (valor: 2,0 pontos)]
  #part(label: "d")[Escreva o corpo da função particiona em linguagem C utilizando a função auxiliar troca,
    a qual foi definida anteriormente. (valor: 4,0 pontos)]
]

#set-problem-counter(15)
#problem[
  *P1*
  Memory leak, ou vazamento de memória, é um problema que ocorre em sistemas computacionais
  quando uma parte da memória, alocada para uma determinada operação, não é liberada quando se
  torna desnecessária. Na linguagem C, esse tipo de problema é quase sempre relacionado ao uso
  incorreto das funções malloc( ) e free( ). Esse erro de programação pode levar a falhas no
  sistema se a memória for completamente consumida.

  A partir dessas informações, assinale a opção que apresenta um trecho com memory leak.

  #part(label: "A")[
    ```c
    void f(){
        void *s;
        s = malloc(50);
        free(s);
    }
    ```
  ]
  #part(label: "B")[
    ```c
    int f(){
        float *a;
        return 0;
    }
    ```
  ]
  #part(label: "C")[
    ```c
    int f(char *data){
        void *s;
        s = malloc(50);
        int size = strlen(data);
        if (size > 50)
            return(-1);
        free(s);
        return 0;
    }
    ```
  ]
  #part(label: "D")[
    ```c
    int *f(int n){
        int *num = malloc(sizeof(int)*n);
        return num;
    }
    int main(void){
        int *num;
        num = f(10);
        free(num);
        return 0;
    }
    ```
  ]
  #part(label: "E")[
    ```c
    void f(int n){
        char *m = malloc(10);
        char *n = malloc(10);
        free(m);
        m = n;
        free(m);
        free(n);
    }
    ```
  ]
]

#set-problem-counter(18)
#problem[
  *P1*
  Vetores de tamanho dinâmico são muito utilizados como estruturas de dados para armazenar listas e
  tabelas de dispersão (tabelas hash). Essa representação permite que o número máximo de elementos
  a ser inserido não precise ser pré-determinado. Uma técnica para implementar vetores de tamanho
  dinâmico é aquela que dobra o tamanho do vetor quando o número de itens a ser armazenado
  ultrapassa o tamanho atual do vetor. Essa operação requer uma alocação de memória para conter o vetor
  com o dobro do tamanho atual e a realização de cópia dos elementos para o novo vetor. Com base nessas
  informações, considere uma lista linear implementada com um vetor dinâmico. Assuma que todos os
  itens inseridos na lista tenham o mesmo tamanho e que o vetor tenha tamanho inicial para comportar
  apenas 1 item.

  Considerando uma sequência de n inserções no final dessa lista, o tempo médio por inserção e o tempo
  total gasto para executar todas as n operações são, respectivamente, da ordem de

  #part(label: "A")[$Theta(log n)$ e $Theta(n log n)$]
  #part(label: "B")[$Theta(1)$ e $Theta(n)$]
  #part(label: "C")[$Theta(1)$ e $Theta(n^2)$]
  #part(label: "D")[$Theta(n)$ e $Theta(n^2)$]
  #part(label: "E")[$Theta(sqrt(n))$ e $Theta(n^(3/2))$]
]

#set-problem-counter(32)
#problem[
  *P2*
  Suponha que uma empresa de transportes deseje calcular uma rota de Manaus para São Paulo
  utilizando a estratégia da busca gulosa, técnica de busca local que seleciona a melhor alternativa
  disponível a cada passo. Observe, a seguir, um grafo de conexão de cidades até o destino final e o
  quadro com estimativas de distância de São Paulo até as demais cidades do grafo.


  #figure(image("../../assets/grafo_cidades.png", height: 40%))

  Com base nessas informações, é correto afirmar que a solução encontrada a partir da utilização do
  algoritmo será

  #part(label: "A")[Manaus → Macapá → São Paulo]
  #part(label: "B")[Manaus → Porto Velho → Cuiabá → Goiânia → São Paulo]
  #part(label: "C")[Manaus → Porto Velho → Palmas → Goiânia → São Paulo]
  #part(label: "D")[Manaus → Macapá → Belém → Palmas → Goiânia → São Paulo]
  #part(label: "E")[Manaus → Macapá → Belém → Palmas → Porto Velho → Cuiabá → Goiânia → São Paulo]
]

#set-problem-counter(34)
#problem[
  *P2*
  Cada roteador em redes de computadores precisa implementar alguma estratégia de enfileiramento
  para controlar como os pacotes são armazenados em buffer enquanto esperam para serem transmitidos,
  independentemente do mecanismo de alocação de recursos. O algoritmo de enfileiramento aloca
  tanto largura de banda, ao transmitir pacotes, quanto espaço de buffer, ao decidir quais pacotes
  são descartados.

  PETERSON, L. L.; DAVIE, B. S. _Redes de Computadores: uma abordagem de sistemas_.
  Rio de Janeiro: Elsevier, 2013 (adaptado).

  Considerando as informações apresentadas, avalie as afirmações a seguir.

  I. O algoritmo FIFO (First-In, First-Out) é adequado para situações em que o tráfego de dados com
  rajadas de longa duração provoca descarte de pacotes.

  II. O algoritmo de enfileiramento justo ponderado (WFQ, do inglês Weighted Fair Queuing) permite
  definir um peso para cada fila, definindo quantos bits são transmitidos sempre que o roteador
  atender a uma determinada fila.

  III. O algoritmo de enfileiramento por prioridade (PQ, do inglês Priority Queuing) evita que uma fila
  de menor prioridade fique indefinidamente sem ser atendida (starvation), utilizando o algoritmo
  Round-Robin para servir a todas as filas.

  IV. Os roteadores que implementam o algoritmo de detecção antecipada aleatória (RED, do inglês
  Random Early Detection) mantêm a média acumulada do tamanho de suas filas e, quando
  esse tamanho ultrapassa, em algum enlace, um determinado limiar, uma fração dos pacotes é
  descartada aleatoriamente.

  É correto apenas o que se afirma em

  #part(label: "A")[I e III.]
  #part(label: "B")[I e IV.]
  #part(label: "C")[II e IV.]
  #part(label: "D")[I, II e III.]
  #part(label: "E")[II, III e IV.]
]
