#import "../../../../themes/inteli/lib.typ": *

= Listas e arrays

#problem[
  Crie um programa em C++ que implemente uma lista encadeada simples (singly
  linked list) e exiba seus elementos. O programa deve permitir ao usuário
  inserir valores na lista e, ao final, exibir todos os elementos na ordem em
  que foram inseridos.

  Este exercício introduz os conceitos fundamentais de listas encadeadas:
  criação de nós, inserção e travessia da lista.

  *Exemplo de entrada*

  ```
  Digite a quantidade de elementos: 6
  Digite o elemento 1: 11
  Digite o elemento 2: 9
  Digite o elemento 3: 7
  Digite o elemento 4: 5
  Digite o elemento 5: 3
  Digite o elemento 6: 1
  ```

  *Exemplo de saída*

  ```
  Lista encadeada: 11 9 7 5 3 1
  ```
]

#problem[
  Crie um programa em C++ que crie uma lista encadeada simples de n nós e exiba
  seus elementos em ordem reversa. O programa deve solicitar ao usuário a
  quantidade de elementos e seus valores, e depois exibir a lista do último
  elemento para o primeiro.

  Este exercício trabalha a travessia recursiva ou iterativa de listas
  encadeadas em ordem reversa.

  *Exemplo de entrada*

  ```
  Digite a quantidade de elementos: 6
  Digite o elemento 1: 11
  Digite o elemento 2: 9
  Digite o elemento 3: 7
  Digite o elemento 4: 5
  Digite o elemento 5: 3
  Digite o elemento 6: 1
  ```

  *Exemplo de saída*

  ```
  Lista original: 11 9 7 5 3 1
  Lista reversa: 1 3 5 7 9 11
  ```
]

#problem[
  Crie um programa em C++ que crie uma lista encadeada simples de n nós e
  conte o número total de nós. O programa deve permitir inserir elementos na
  lista e, ao final, exibir a quantidade total de nós presentes.

  Este exercício introduz a operação de contagem de elementos em uma lista
  encadeada.

  *Exemplo de entrada*

  ```
  Digite a quantidade de elementos: 7
  Digite o elemento 1: 13
  Digite o elemento 2: 11
  Digite o elemento 3: 9
  Digite o elemento 4: 7
  Digite o elemento 5: 5
  Digite o elemento 6: 3
  Digite o elemento 7: 1
  ```

  *Exemplo de saída*

  ```
  Lista encadeada: 13 11 9 7 5 3 1
  Número de nós na lista: 7
  ```
]

#problem[
  Crie um programa em C++ que insira um novo nó no início de uma lista
  encadeada simples. O programa deve criar uma lista com alguns elementos,
  solicitar um novo valor ao usuário e inseri-lo no início da lista.

  Este exercício trabalha a inserção no início da lista, atualizando o ponteiro
  da cabeça (head).

  *Exemplo de entrada*

  ```
  Lista original: 13 11 9 7 5 3 1
  Digite o valor a ser inserido no início: 0
  ```

  *Exemplo de saída*

  ```
  Lista após inserção no início: 0 13 11 9 7 5 3 1
  ```
]

#problem[
  Crie um programa em C++ que insira um novo nó no final de uma lista
  encadeada simples. O programa deve criar uma lista com alguns elementos,
  solicitar um novo valor ao usuário e inseri-lo no final da lista.

  Este exercício trabalha a inserção no final da lista, percorrendo até o
  último nó.

  *Exemplo de entrada*

  ```
  Lista original: 13 11 9 7 5 3 1
  Digite o valor a ser inserido no final: 0
  ```

  *Exemplo de saída*

  ```
  Lista após inserção no final: 13 11 9 7 5 3 1 0
  ```
]

#problem[
  Crie um programa em C++ que encontre o elemento do meio de uma lista
  encadeada. O programa deve criar uma lista e determinar qual elemento está
  na posição central. Se a lista tiver número par de elementos, retorne o
  segundo elemento do meio.

  Este exercício introduz o conceito de dois ponteiros (slow e fast) para
  encontrar o meio da lista em uma única travessia.

  *Exemplo de entrada 1*

  ```
  Lista: 7 5 3 1
  ```

  *Exemplo de saída 1*

  ```
  Elemento do meio: 3
  ```

  *Exemplo de entrada 2*

  ```
  Lista: 9 7 5 3 1
  ```

  *Exemplo de saída 2*

  ```
  Elemento do meio: 5
  ```
]

#problem[
  Crie um programa em C++ que insira um novo nó no meio de uma lista
  encadeada simples. O programa deve criar uma lista, calcular a posição do
  meio e inserir o novo valor nessa posição.

  Este exercício combina a busca pelo elemento do meio com a inserção em
  posição específica.

  *Exemplo de entrada*

  ```
  Lista original: 7 5 3 1
  Digite o valor a ser inserido no meio: 9
  ```

  *Exemplo de saída (após primeira inserção)*

  ```
  Lista após inserção: 7 5 9 3 1
  ```

  *Exemplo de saída (após segunda inserção)*

  ```
  Lista após inserção: 7 5 9 11 3 1
  ```
]

#problem[
  Crie um programa em C++ que obtenha o n-ésimo nó de uma lista encadeada
  simples. O programa deve criar uma lista, solicitar ao usuário uma posição
  e retornar o valor do nó nessa posição (1-indexed).

  Este exercício trabalha o acesso por índice em listas encadeadas.

  *Exemplo de entrada*

  ```
  Lista: 7 5 3 1
  Digite a posição desejada: 3
  ```

  *Exemplo de saída*

  ```
  Valor na posição 3: 3
  ```
]

#problem[
  Crie um programa em C++ que insira um novo nó em qualquer posição de uma
  lista encadeada simples. O programa deve criar uma lista, solicitar ao
  usuário a posição e o valor a ser inserido, e inserir o nó na posição
  especificada (1-indexed).

  Este exercício trabalha a inserção em posição arbitrária, tratando casos
  especiais como inserção no início e no final.

  *Exemplo de entrada 1*

  ```
  Lista original: 7 5 3 1
  Digite a posição: 1
  Digite o valor: 12
  ```

  *Exemplo de saída 1*

  ```
  Lista atualizada: 12 7 5 3 1
  ```

  *Exemplo de entrada 2*

  ```
  Lista atual: 12 7 5 3 1
  Digite a posição: 4
  Digite o valor: 14
  ```

  *Exemplo de saída 2*

  ```
  Lista atualizada: 12 7 5 14 3 1
  ```
]

#problem[
  Crie um programa em C++ que delete o primeiro nó de uma lista encadeada
  simples. O programa deve criar uma lista, exibi-la, remover o primeiro
  elemento e exibir a lista atualizada.

  Este exercício trabalha a remoção no início da lista, atualizando o
  ponteiro da cabeça (head).

  *Exemplo de entrada*

  ```
  Lista original: 13 11 9 7 5 3 1
  ```

  *Exemplo de saída*

  ```
  Lista após remoção do primeiro nó: 11 9 7 5 3 1
  ```
]

#problem[
  Crie um programa em C++ que delete um nó do meio de uma lista encadeada
  simples. O programa deve criar uma lista, calcular a posição do meio,
  remover o nó dessa posição e exibir a lista atualizada. O processo pode
  ser repetido até que reste apenas um elemento.

  Este exercício combina a busca pelo elemento do meio com a remoção em
  posição específica.

  *Exemplo de entrada*

  ```
  Lista original: 9 7 5 3 1
  ```

  *Exemplo de saída (após primeira remoção)*

  ```
  Lista após remover o meio: 9 7 3 1
  ```

  *Exemplo de saída (após segunda remoção)*

  ```
  Lista após remover o meio: 9 7 1
  ```

  *Exemplo de saída (após terceira remoção)*

  ```
  Lista após remover o meio: 9 1
  ```

  *Exemplo de saída (após quarta remoção)*

  ```
  Lista após remover o meio: 9
  ```
]

#problem[
  Crie um programa em C++ que delete o último nó de uma lista encadeada
  simples. O programa deve criar uma lista, exibi-la, remover o último
  elemento e exibir a lista atualizada. O processo pode ser repetido
  múltiplas vezes.

  Este exercício trabalha a remoção no final da lista, percorrendo até o
  penúltimo nó.

  *Exemplo de entrada*

  ```
  Lista original: 7 5 3 1
  ```

  *Exemplo de saída (após primeira remoção)*

  ```
  Lista após remoção do último nó: 7 5 3
  ```

  *Exemplo de saída (após segunda remoção)*

  ```
  Lista após remoção do último nó: 7 5
  ```
]

#problem[
  Crie um programa em C++ que implemente um array dinâmico simples com
  redimensionamento automático. O programa deve criar uma classe que armazena
  elementos em um array, e quando o array está cheio, cria um novo array com
  o dobro do tamanho, copia os elementos e libera a memória antiga.

  Este exercício demonstra o mecanismo fundamental de redimensionamento de
  arrays dinâmicos: realocação e cópia de elementos.

  *Exemplo de entrada*

  ```
  Digite os elementos (0 para parar):
  Elemento 1: 10
  Elemento 2: 20
  Elemento 3: 30
  Elemento 4: 40
  Elemento 5: 50
  Elemento 6: 0
  ```

  *Exemplo de saída*

  ```
  Capacidade inicial: 4
  Redimensionando: capacidade 4 -> 8
  Array final: 10 20 30 40 50
  Tamanho: 5
  Capacidade: 8
  ```
]

#problem[
  Crie um programa em C++ que implemente uma classe Vector com comportamento
  similar à lista do Python. A classe deve suportar: adicionar elemento no final
  (append), remover e retornar último elemento (pop), inserir em posição
  específica (insert), remover primeira ocorrência de valor (remove), acesso
  por índice (operator[]), e redimensionamento automático (dobrar quando cheio,
  reduzir pela metade quando muito vazio).

  Este exercício implementa uma estrutura de dados completa com todas as
  operações básicas de uma lista dinâmica.

  *Exemplo de interação*

  ```
  Vector v;
  v.append(10);
  v.append(20);
  v.append(30);
  v.display();           // [10, 20, 30]
  v.insert(1, 15);       // [10, 15, 20, 30]
  v.remove(20);          // [10, 15, 30]
  int x = v.pop();       // x = 30, v = [10, 15]
  v.display();           // [10, 15]
  v[0] = 100;            // [100, 15]
  ```

  *Exemplo de saída*

  ```
  Tamanho: 2
  Capacidade: 4
  Elementos: 100 15
  ```
]

#problem[
  Crie um programa em C++ que implemente um sistema de Undo/Redo usando listas
  duplamente ligadas. O sistema deve permitir executar ações (com descrição),
  desfazer a última ação (undo) e refazer ações desfeitas (redo). Use duas
  listas: uma para ações executadas e outra para ações desfeitas.

  Este exercício aplica listas duplamente ligadas em um cenário prático de
  histórico de operações, demonstrando navegação bidirecional.

  *Exemplo de interação*

  ```
  > add 10
  Ação: Adicionar 10
  > add 20
  Ação: Adicionar 20
  > multiply 2
  Ação: Multiplicar por 2
  > undo
  Desfeito: Multiplicar por 2
  > undo
  Desfeito: Adicionar 20
  > redo
  Refeito: Adicionar 20
  > display
  Ações ativas: Adicionar 10, Adicionar 20
  ```

  *Exemplo de saída*

  ```
  Histórico de ações:
  [Adicionar 10] <- [Adicionar 20] <- atual
  Ações desfeitas: [Multiplicar por 2]
  ```
]
