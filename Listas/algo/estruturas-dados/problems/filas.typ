#import "../../../../themes/inteli/lib.typ": *

= Filas

#problem[
  Crie um programa em C++ que implemente a operação de enqueue (enfileirar) em
  uma fila usando array. O programa deve permitir ao usuário inserir elementos
  na fila até atingir a capacidade máxima, exibindo mensagens apropriadas.

  Este exercício introduz o conceito fundamental de inserção em filas (FIFO -
  First In, First Out) e o gerenciamento do índice de inserção (rear).

  *Exemplo de entrada*

  ```
  Capacidade da fila: 5
  Digite os elementos (0 para parar):
  Elemento: 10
  Elemento: 20
  Elemento: 30
  Elemento: 0
  ```

  *Exemplo de saída*

  ```
  Fila: [10, 20, 30]
  Tamanho: 3
  Capacidade: 5
  ```
]

#problem[
  Crie um programa em C++ que implemente a operação de dequeue (desenfileirar)
  em uma fila usando array. O programa deve permitir remover elementos do
  início da fila e exibir o elemento removido. Trate o caso de fila vazia.

  Este exercício trabalha a remoção do início da fila e o gerenciamento do
  índice de remoção (front).

  *Exemplo de entrada*

  ```
  Fila inicial: [10, 20, 30, 40, 50]
  Quantos elementos remover? 3
  ```

  *Exemplo de saída*

  ```
  Removido: 10
  Removido: 20
  Removido: 30
  Fila atual: [40, 50]
  ```
]

#problem[
  Crie um programa em C++ que implemente a operação de front (consultar início)
  em uma fila. O programa deve permitir visualizar o elemento do início da fila
  sem removê-lo, útil para verificar qual elemento será processado a seguir.

  Este exercício introduz a operação de consulta que não altera a estrutura da
  fila.

  *Exemplo de entrada*

  ```
  Fila: [15, 25, 35, 45]
  ```

  *Exemplo de saída*

  ```
  Elemento do início: 15
  Próximo a ser atendido: 15
  Fila permanece: [15, 25, 35, 45]
  ```
]

#problem[
  Crie um programa em C++ que implemente as operações de size (tamanho) e
  isEmpty (verificar se vazia) em uma fila. O programa deve fornecer métodos
  para consultar quantos elementos estão na fila e verificar se ela está vazia
  antes de operações de remoção.

  Este exercício trabalha o gerenciamento do estado da fila e validações
  importantes para evitar erros.

  *Exemplo de interação*

  ```
  Fila vazia? Sim
  Inserindo: 10, 20, 30
  Tamanho: 3
  Fila vazia? Não
  Removendo todos...
  Fila vazia? Sim
  Tentando remover de fila vazia: ERRO - Fila vazia!
  ```
]

#problem[
  Crie um programa em C++ que implemente uma fila completa usando lista
  encadeada. Ao contrário da implementação com array, a fila deve crescer
  dinamicamente conforme necessário, sem limite pré-definido de capacidade.

  Este exercício demonstra a implementação de fila com alocação dinâmica,
  utilizando ponteiros para o início (front) e fim (rear) da lista.

  *Exemplo de entrada*

  ```
  Digite elementos (0 para parar):
  Elemento: 5
  Elemento: 10
  Elemento: 15
  Elemento: 20
  Elemento: 0
  ```

  *Exemplo de saída*

  ```
  Fila: 5 -> 10 -> 15 -> 20
  Tamanho: 4
  Desenfileirando: 5
  Fila: 10 -> 15 -> 20
  ```
]

#problem[
  Crie um programa em C++ que simule um sistema de atendimento bancário com
  múltiplos caixas. Clientes chegam e são atendidos em ordem de chegada (FIFO)
  pelos caixas disponíveis. O sistema deve calcular métricas como tempo médio
  de espera na fila e tempo médio de atendimento por caixa.

  Cada cliente tem um tempo de atendimento aleatório ou pré-definido. O
  sistema processa clientes até que todos sejam atendidos, distribuindo-os
  entre os caixas disponíveis.

  Este exercício aplica filas em um cenário realista de sistemas de atendimento,
  demonstrando balanceamento de carga e análise de desempenho.

  *Exemplo de entrada*

  ```
  Número de caixas: 3
  Número de clientes: 8
  Tempo de atendimento do cliente 1: 5 min
  Tempo de atendimento do cliente 2: 3 min
  Tempo de atendimento do cliente 3: 8 min
  Tempo de atendimento do cliente 4: 2 min
  Tempo de atendimento do cliente 5: 6 min
  Tempo de atendimento do cliente 6: 4 min
  Tempo de atendimento do cliente 7: 7 min
  Tempo de atendimento do cliente 8: 3 min
  ```

  *Exemplo de saída*

  ```
  Distribuição de atendimento:
  Caixa 1: Clientes 1(5min), 4(2min), 7(7min) - Total: 14min
  Caixa 2: Clientes 2(3min), 5(6min), 8(3min) - Total: 12min
  Caixa 3: Clientes 3(8min), 6(4min) - Total: 12min

  Estatísticas:
  Tempo médio de espera na fila: 4.25 min
  Tempo médio de atendimento: 4.75 min
  Caixa mais ocupado: Caixa 1 (14 min)
  Total de clientes atendidos: 8
  ```
]

#problem[
  Crie um programa em C++ que implemente um buffer circular (ring buffer) para
  comunicação entre processos produtor e consumidor. O buffer tem capacidade
  fixa e opera com política FIFO circular: quando cheio, o produtor espera;
  quando vazio, o consumidor espera.

  O programa deve simular a produção e consumo de dados, mostrando o estado do
  buffer a cada operação e como os índices de inserção e remoção circulam pelo
  array.

  Este exercício demonstra a eficiência da fila circular em cenários de
  streaming e comunicação entre processos, eliminando a necessidade de
  deslocar elementos.

  *Exemplo de simulação*

  ```
  Capacidade do buffer: 4
  
  Produzir: A
  Buffer: [A, _, _, _]  (in=1, out=0)
  
  Produzir: B
  Buffer: [A, B, _, _]  (in=2, out=0)
  
  Consumir: A
  Buffer: [_, B, _, _]  (in=2, out=1)
  
  Produzir: C
  Buffer: [_, B, C, _]  (in=3, out=1)
  
  Produzir: D
  Buffer: [_, B, C, D]  (in=0, out=1)  // circular!
  
  Produzir: E
  Buffer: [E, B, C, D]  (in=1, out=1)  // sobrescreve? Não, espera!
  
  Consumir: B
  Buffer: [E, _, C, D]  (in=1, out=2)
  
  Produzir: E
  Buffer: [E, E, C, D]  (in=2, out=2)
  ```

  *Exemplo de saída*

  ```
  Total produzido: 5 itens
  Total consumido: 2 itens
  Itens no buffer: 3
  Taxa de ocupação: 75%
  ```
]

#problem[
  Crie um programa em C++ que implemente uma fila de impressão circular com
  limite de documentos. O sistema gerencia documentos enviados por múltiplos
  usuários para uma impressora compartilhada. Quando a fila atinge a capacidade
  máxima, novos documentos substituem os mais antigos (política de
  substituição circular).

  Cada documento tem: ID, nome do usuário, nome do arquivo e número de páginas.
  O sistema deve mostrar a ordem de impressão e quais documentos foram
  substituídos quando a fila estava cheia.

  Este exercício aplica fila circular com política de substituição em um
  cenário real de gerenciamento de recursos compartilhados.

  *Exemplo de entrada*

  ```
  Capacidade da fila: 5 documentos
  
  Usuário Ana envia: "relatorio.pdf" (10 páginas)
  Usuário Bruno envia: "foto.jpg" (1 página)
  Usuário Carla envia: "contrato.doc" (5 páginas)
  Usuário Daniel envia: "apresentacao.ppt" (15 páginas)
  Usuário Elisa envia: "planilha.xlsx" (3 páginas)
  
  Fila cheia! (5/5 documentos)
  
  Usuário Fabio envia: "artigo.pdf" (8 páginas)
  ```

  *Exemplo de saída*

  ```
  Fila de impressão:
  1. Bruno - foto.jpg (1 pág)
  2. Carla - contrato.doc (5 pág)
  3. Daniel - apresentacao.ppt (15 pág)
  4. Elisa - planilha.xlsx (3 pág)
  5. Fabio - artigo.pdf (8 pág)
  
  Documento substituído: Ana - relatorio.pdf (10 pág)
  
  Total de páginas na fila: 32
  Tempo estimado: 6 min 24 seg
  ```
]
