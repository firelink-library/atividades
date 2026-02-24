#import "../../../../themes/inteli/lib.typ": *

= Pilhas

#problem[
  Crie um programa em C++ que implemente uma pilha para gerenciar o histórico de navegação de um navegador web. Cada elemento da pilha deve armazenar a URL da página e o timestamp do acesso.

  O programa deve implementar as seguintes operações:
  - `push(url, timestamp)`: adiciona uma nova página ao histórico
  - `pop()`: remove e retorna a página mais recente (função "Voltar")
  - `top()`: retorna a página atual sem remover
  - `isEmpty()`: verifica se o histórico está vazio
  - `size()`: retorna a quantidade de páginas no histórico

  *Exemplo de uso*

  ```
  Histórico: vazio
  
  Visitar: google.com (10:00)
  Visitar: github.com (10:05)
  Visitar: stackoverflow.com (10:10)
  
  Página atual: stackoverflow.com
  
  Clicar em "Voltar"
  Página atual: github.com
  
  Clicar em "Voltar"
  Página atual: google.com
  
  Histórico: 1 página
  ```
]

#problem[
  Crie um programa em C++ que implemente um validador de expressões matemáticas usando pilha. O programa deve verificar se os parênteses `()`, chaves `{}` e colchetes `[]` estão corretamente balanceados em uma expressão.

  O programa deve:
  - Ler uma expressão contendo os delimitadores
  - Usar pilha para verificar o balanceamento
  - Retornar verdadeiro se balanceado, falso caso contrário

  *Exemplo de entrada*

  ```
  Expressão: ([])
  ```

  *Exemplo de saída*

  ```
  Balanceado: true
  ```

  *Exemplo de entrada 2*

  ```
  Expressão: ([)]
  ```

  *Exemplo de saída 2*

  ```
  Balanceado: false
  ```
]

#problem[
  Crie um programa em C++ que implemente um sistema de Undo/Redo para um editor de texto usando duas pilhas. O sistema deve permitir desfazer (undo) e refazer (redo) operações de digitação.

  O programa deve implementar:
  - `digitar(texto)`: adiciona texto e empilha na pilha de undo, limpa a pilha de redo
  - `undo()`: desfaz a última operação (move de undo para redo)
  - `redo()`: refaz a operação desfeita (move de redo para undo)
  - `getTexto()`: retorna o texto atual do documento

  *Exemplo de interação*

  ```
  Digitar: "Olá"
  Digitar: " Mundo"
  Digitar: "!"
  Texto: "Olá Mundo!"
  
  Undo
  Texto: "Olá Mundo"
  
  Undo
  Texto: "Olá"
  
  Digitar: " Pessoal"
  Texto: "Olá Pessoal"
  
  Redo (não deve funcionar após nova digitação)
  Texto: "Olá Pessoal"
  ```
]

#problem[
  Crie um programa em C++ que implemente uma calculadora RPN (Reverse Polish Notation) usando pilha. A calculadora deve avaliar expressões em notação pós-fixada.

  O programa deve:
  - Receber uma lista de tokens (números e operadores)
  - Usar pilha para armazenar operandos
  - Ao encontrar operador (+, -, \*, /), desempilhar dois operandos, aplicar a operação e empilhar o resultado
  - Retornar o resultado final

  *Exemplo de entrada*

  ```
  Expressão: 2 3 + 4 *
  ```

  *Exemplo de saída*

  ```
  Resultado: 20
  (Passo 1: empilha 2, 3)
  (Passo 2: encontra +, desempilha 3 e 2, calcula 2+3=5, empilha 5)
  (Passo 3: empilha 4)
  (Passo 4: encontra *, desempilha 4 e 5, calcula 5*4=20)
  ```
]

#problem[
  Crie um programa em C++ que simule a pilha de chamadas de funções (call stack) de um programa. Cada elemento da pilha deve armazenar o nome da função e o endereço de retorno.

  O programa deve implementar:
  - `pushFrame(funcao, retorno)`: empilha uma nova chamada de função
  - `popFrame()`: desempilha ao retornar da função
  - `topFrame()`: retorna a função atual em execução
  - `displayStack()`: exibe a pilha de chamadas atual

  *Exemplo de simulação*

  ```
  main() chama A()
  Pilha: [main]
  
  A() chama B()
  Pilha: [main, A]
  
  B() chama C()
  Pilha: [main, A, B]
  
  C() retorna
  Pilha: [main, A, B]
  
  B() retorna
  Pilha: [main, A]
  
  A() chama D()
  Pilha: [main, A, D]
  ```
]

#problem[
  Crie um programa em C++ que converta números decimais para outras bases (binário, hexadecimal, octal) usando pilha. O programa deve armazenar os restos das divisões sucessivas na pilha e depois desempilhar para formar o resultado.

  O programa deve:
  - Receber um número decimal e a base de destino (2, 8 ou 16)
  - Usar pilha para armazenar os restos da divisão
  - Desempilhar todos os restos para formar a representação na nova base
  - Suportar bases até 16 (dígitos 0-9, A-F)

  *Exemplo de entrada*

  ```
  Número: 45
  Base: 2
  ```

  *Exemplo de saída*

  ```
  45 em base 2: 101101
  (Divisões: 45/2=22 r1, 22/2=11 r0, 11/2=5 r1, 5/2=2 r1, 2/2=1 r0, 1/2=0 r1)
  ```
]

#problem[
  Crie um programa em C++ que implemente um algoritmo de busca em profundidade (DFS) para encontrar um caminho em um labirinto usando pilha. O algoritmo deve empilhar as posições visitadas e desempilhar ao retroceder.

  O programa deve:
  - Representar o labirinto como uma matriz (0 = livre, 1 = parede)
  - Usar pilha para armazenar as posições (x, y) do caminho
  - Marcar posições visitadas
  - Desempilhar quando encontra beco sem saída
  - Retornar o caminho encontrado da entrada até a saída

  *Exemplo de labirinto*

  ```
  Entrada → E . . # .
          . # . # .
          . . . . S ← Saída
          # # # # .
  
  Caminho encontrado:
  (0,0) → (0,1) → (0,2) → (1,2) → (2,2) → (2,3) → (2,4)
  ```
]

#problem[
  Crie um programa em C++ que implemente um sistema de desfazer (undo) para um aplicativo de desenho. Cada traço (linha) desenhado deve ser empilhado para permitir desfazer as operações.

  O programa deve implementar:
  - Estrutura `Traço` com coordenadas (x1, y1) e (x2, y2)
  - `adicionarTraco(x1, y1, x2, y2)`: adiciona novo traço à pilha
  - `undo()`: remove o último traço adicionado
  - `listarTracos()`: exibe todos os traços atuais
  - `count()`: retorna quantidade de traços

  *Exemplo de interação*

  ```
  Desenhar: (10,10)-(20,20)
  Desenhar: (30,10)-(40,20)
  Desenhar: (50,10)-(60,20)
  Desenhar: (70,10)-(80,20)
  Desenhar: (90,10)-(100,20)
  
  Total de traços: 5
  
  Undo
  Undo
  Undo
  
  Total de traços: 2
  
  Desenhar: (110,10)-(120,20)
  Desenhar: (130,10)-(140,20)
  
  Total de traços: 4
  ```
]

#problem[
  Crie um programa em C++ que implemente o algoritmo Shunting-Yard para converter expressões matemáticas da notação infixa para pós-fixa (notação polonesa reversa) usando pilha.

  O programa deve:
  - Receber uma expressão infixa (ex: `3 + 4 * 2 / ( 1 - 5 )`)
  - Usar pilha para armazenar operadores (+, -, \*, /, (, ))
  - Aplicar as regras de precedência e associatividade
  - Retornar a expressão em notação pós-fixa

  *Exemplo de entrada*

  ```
  Expressão infixa: 3 + 4 * 2 / ( 1 - 5 )
  ```

  *Exemplo de saída*

  ```
  Expressão pós-fixa: 3 4 2 * 1 5 - / +
  
  Passos:
  - 3 → saída
  - + → pilha
  - 4 → saída
  - * → pilha (maior precedência que +)
  - 2 → saída
  - / → desempilha *, empilha /
  - ( → empilha (
  - 1 → saída
  - - → empilha -
  - 5 → saída
  - ) → desempilha até (, envia - para saída
  - Fim: desempilha tudo
  ```
]

#problem[
  Crie um programa em C++ que verifique se uma palavra ou frase é um palíndromo usando pilha. Um palíndromo é uma sequência que pode ser lida da mesma forma de trás para frente.

  O programa deve:
  - Receber uma string (ignorar espaços e diferença entre maiúsculas/minúsculas)
  - Empilhar a primeira metade da string
  - Comparar a segunda metade desempilhando caractere por caractere
  - Retornar verdadeiro se for palíndromo, falso caso contrário

  *Exemplo de entrada*

  ```
  Palavra: radar
  ```

  *Exemplo de saída*

  ```
  Palíndromo: true
  (Empilha: r, a, d)
  (Compara: d==d, a==a, r==r)
  ```

  *Exemplo de entrada 2*

  ```
  Palavra: hello
  ```

  *Exemplo de saída 2*

  ```
  Palíndromo: false
  (Empilha: h, e, l)
  (Compara: l!=o)
  ```
]
