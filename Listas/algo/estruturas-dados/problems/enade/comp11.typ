#import "../../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Computação 2011 (#link-style(
  "http://download.inep.gov.br/educacao_superior/enade/gabaritos/2011/Enade2011_Gab_Def_Computacao.pdf",
  [gabarito],
))

#set-problem-counter(20)
#problem[
  *P2*
  Considere que G é um grafo qualquer e que V e E são os
  conjuntos de vértices e de arestas de G, respectivamente.
  Considere também que grau (v) é o grau de um vértice
  v pertencente ao conjunto V. Nesse contexto, analise as
  seguintes asserções.

  Em G, a quantidade de vértices com grau ímpar é ímpar.

  PORQUE

  $ sum_(v in V) op("grau")(v) = 2|E| $

  Para G, vale a identidade dada pela expressão

  Acerca dessas asserções, assinale a opção correta.

  #part(label: "A")[As duas asserções são proposições verdadeiras, e a
    segunda é uma justificativa correta da primeira.]
  #part(label: "B")[As duas asserções são proposições verdadeiras, mas
    a segunda não é uma justificativa correta da primeira.]
  #part(label: "C")[A primeira asserção é uma proposição verdadeira, e a
    segunda uma proposição falsa.]
  #part(label: "D")[A primeira asserção é uma proposição falsa, e a
    segunda uma proposição verdadeira.]
  #part(label: "E")[Tanto a primeira quanto a segunda asserções são
    proposições falsas.]
]
#pagebreak(weak: true)

#set-problem-counter(21)
#problem[
  *P1*
  No desenvolvimento de um software que analisa bases de
  DNA, representadas pelas letras A, C, G, T, utilizou-se as
  estruturas de dados: pilha e fi la. Considere que, se uma
  sequência representa uma pilha, o topo é o elemento mais
  à esquerda; e se uma sequência representa uma fi la, a
  sua frente é o elemento mais à esquerda.

  Analise o seguinte cenário: "a sequência inicial fi cou
  armazenada na primeira estrutura de dados na seguinte
  ordem: (A,G,T,C,A,G,T,T). Cada elemento foi retirado
  da primeira estrutura de dados e inserido na segunda
  estrutura de dados, e a sequência fi cou armazenada na
  seguinte ordem: (T,T,G,A,C,T,G,A). Finalmente, cada
  elemento foi retirado da segunda estrutura de dados e
  inserido na terceira estrutura de dados e a sequência fi cou
  armazenada na seguinte ordem: (T,T,G,A,C,T,G,A)".

  Qual a única sequência de estruturas de dados
  apresentadas a seguir pode ter sido usada no cenário
  descrito acima?

  #part(label: "A")[Fila - Pilha - Fila.]
  #part(label: "B")[Fila - Fila - Pilha.]
  #part(label: "C")[Fila - Pilha - Pilha.]
  #part(label: "D")[Pilha - Fila - Pilha.]
  #part(label: "E")[Pilha - Pilha - Pilha.]
]

#pagebreak(weak: true)

#set-problem-counter(23)
#problem[
  *P2*
  As filas de prioridades (heaps) são estruturas de dados
  importantes no projeto de algoritmos. Em especial, heaps
  podem ser utilizados na recuperação de informação
  em grandes bases de dados constituídos por textos.
  Basicamente, para se exibir o resultado de uma consulta,
  os documentos recuperados são ordenados de acordo
  com a relevância presumida para o usuário. Uma consulta
  pode recuperar milhões de documentos que certamente
  não serão todos examinados. Na verdade, o usuário
  examina os primeiros m documentos dos n recuperados,
  em que m é da ordem de algumas dezenas.

  Considerando as características dos heaps e sua
  aplicação no problema descrito acima, avalie as
  seguintes afirmações.

  I. Uma vez que o heap é implementado como
  uma árvore binária de pesquisa essencialmente
  completa, o custo computacional para sua
  construção é O(n log n).

  II. A implementação de heaps utilizando-se vetores
  é eficiente em tempo de execução e em espaço
  de armazenamento, pois o pai de um elemento
  armazenado na posição i se encontra armazenado
  na posição 2i+1.

  III. O custo computacional para se recuperar
  de forma ordenada os m documentos mais
  relevantes armazenados em um heap de
  tamanho n é O(m log n).

  IV. Determinar o documento com maior valor de
  relevância armazenado em um heap tem custo
  computacional O(1).

  Está correto apenas o que se afirma em

  #part(label: "A")[I e II.]
  #part(label: "B")[II e III.]
  #part(label: "C")[III e IV.]
  #part(label: "D")[I, II e IV.]
  #part(label: "E")[I, III e IV.]
]

#set-problem-counter(27)
#problem[
  *P1*
  Algoritmos criados para resolver um mesmo problema
  podem diferir de forma drástica quanto a sua eficiência.
  Para evitar este fato, são utilizadas técnicas algorítmicas,
  isto é, conjunto de técnicas que compreendem os métodos
  de codificação de algoritmos de forma a salientar sua
  complexidade, levando-se em conta a forma pela qual
  determinado algoritmo chega à solução desejada.

  Considerando os diferentes paradigmas e técnicas de
  projeto de algoritmos, analise as afirmações abaixo.

  I. A técnica de tentativa e erro (backtracking) efetua
  uma escolha ótima local, na esperança de obter
  uma solução ótima global.

  II. A técnica de divisão e conquista pode ser dividida
  em três etapas: dividir a instância do problema
  em duas ou mais instâncias menores; resolver
  as instâncias menores recursivamente; obter a
  solução para as instâncias originais (maiores) por
  meio da combinação dessas soluções.

  III. A técnica de programação dinâmica
  decompõe o processo em um número finito de
  subtarefas parciais que devem ser exploradas
  exaustivamente.

  IV. O uso de heurísticas (ou algoritmos aproximados)
  é caracterizado pela ação de um procedimento
  chamar a si próprio, direta ou indiretamente.

  É correto apenas o que se afirma em

  #part(label: "A")[I.]
  #part(label: "B")[II.]
  #part(label: "C")[I e IV.]
  #part(label: "D")[II e III.]
  #part(label: "E")[III e IV.]
]

#pagebreak(weak: true)

#set-problem-counter(29)
#problem[
  *P2*
  Suponha que se queira pesquisar a chave 287 em uma
  árvore binária de pesquisa com chaves entre 1 e 1 000.
  Durante uma pesquisa como essa, uma sequência de
  chaves é examinada. Cada sequência abaixo é uma
  suposta sequência de chaves examinadas em uma busca
  da chave 287.

  I. 7, 342, 199, 201, 310, 258, 287

  II. 110, 132, 133, 156, 289, 288, 287

  III. 252, 266, 271, 294, 295, 289, 287

  IV. 715, 112, 530, 249, 406, 234, 287

  É válido apenas o que se apresenta em

  #part(label: "A")[I.]
  #part(label: "B")[III.]
  #part(label: "C")[I e II.]
  #part(label: "D")[II e IV.]
  #part(label: "E")[III e IV.]
]

#set-problem-counter(2)
#problem[
  *P1*
  Os números de Fibonacci correspondem à uma sequência infinita na
  qual os dois primeiros termos são 0 e 1. Cada termo da sequência,
  à exceção dos dois primeiros, é igual à soma dos dois anteriores,
  conforme a relação de recorrência abaixo.

  $ f_n = f_(n-1) + f_(n-2) $

  Desenvolva dois algoritmos, um iterativo e outro recursivo, que, dado um número natural n > 0, retorna o n-ésimo termo
  da sequência de Fibonacci. Apresente as vantagens e desvantagens de cada algoritmo.
]

#pagebreak(weak: true)

#set-problem-counter(3)
#problem[
  *P2*
  Listas ordenadas implementadas com vetores são estruturas
  de dados adequadas para a busca binária, mas possuem o
  inconveniente de exigirem custo computacional de ordem linear
  para a inserção de novos elementos. Se as operações de inserção
  ou remoção de elementos forem frequentes, uma alternativa é
  transformar a lista em uma árvore binária de pesquisa balanceada,
  que permitirá a execução dessas operações com custo logarítmico.

  Considerando essas informações, escreva um algoritmo recursivo que construa uma árvore binária de pesquisa
  completa, implementada por estruturas auto-referenciadas ou apontadores, a partir de um vetor ordenado, v, de n
  inteiros, em que n = 2m - 1, m > 0. O algoritmo deve construir a árvore em tempo linear, sem precisar fazer qualquer
  comparação entre os elementos do vetor, uma vez que este já está ordenado. Para isso,

  #part(label: "a")[descreva a estrutura de dados utilizada para a implementação da árvore (valor = 2,0 pontos)]
  #part(
    label: "b",
  )[escreva o algoritmo para a construção da árvore. A chamada principal à função recursiva deve passar, como
    parâmetros, o vetor, índice do primeiro e último elementos, retornando a referência ou apontador para a raiz da
    árvore criada (valor: 8,0 pontos).]

  Observação: Qualquer notação em português estruturado, de forma imperativa ou orientada a objetos deve ser
  considerada, assim como em uma linguagem de alto nível, como o Pascal, C e Java.
]
