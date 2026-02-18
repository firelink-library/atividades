#import "../../../themes/inteli/lib.typ": *

#inteli-handout(
  title: "Introdução ao C++",
  subtitle: "Pensamento computacional e introdução à linguagem",
  course: "Engenharia de Computação",
  // module: "5",
  type: "Lista de Exercícios",
  heading-font: "Alegreya Sans SC",
  numbering-font: "Roboto",
)[

  = Primeiros passos

  #include "problems/ola-mundo.typ"
  #include "problems/dados-pessoais.typ"
  #include "problems/padrao-asteriscos.typ"
  #include "problems/mensagem-boas-vindas.typ"

  = Variáveis e Tipos de Dados

  #include "problems/soma-dois-numeros.typ"
  #include "problems/conversao-temperatura.typ"
  #include "problems/divisao-inteira-vs-float.typ"
  #include "problems/operador-modulo.typ"
  #include "problems/conversao-tipos.typ"

  = Estruturas Condicionais

  #include "problems/maior-de-tres.typ"
  #include "problems/verifica-idade.typ"
  #include "problems/par-ou-impar.typ"
  #include "problems/aprovado-reprovado.typ"
  #include "problems/positivo-negativo-zero.typ"

  = Laços de Repetição

  #include "problems/contagem-um-a-dez.typ"
  #include "problems/soma-pares.typ"

  = Funções

  #include "problems/funcao-dobro.typ"
  #include "problems/funcao-positivo.typ"

  = Arrays e Vetores

  #include "problems/array-inverso.typ"
  #include "problems/media-array.typ"
  #include "problems/busca-elemento.typ"
  #include "problems/soma-diagonal.typ"

  = Strings

  #include "problems/comprimento-string.typ"
  #include "problems/concatena-strings.typ"
  #include "problems/verifica-palindromo.typ"
  #include "problems/conta-vogais.typ"

  = Classes e Objetos

  #include "problems/classe-retangulo.typ"
  #include "problems/classe-pessoa.typ"
  #include "problems/classe-conta-bancaria.typ"
  #include "problems/classe-aluno.typ"
]
