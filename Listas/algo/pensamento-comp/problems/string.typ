#import "../../../../themes/inteli/lib.typ": *

= Strings

#problem[
  Crie um programa que inverta uma string fornecida pelo usuário.

  O programa deve receber uma string e retornar os caracteres na ordem inversa.

  *Exemplo de entrada*

  ```
  Digite uma string: programacao
  ```

  *Exemplo de saída*

  ```
  String invertida: oacammargorp
  ```
]

#problem[
  Crie um programa que substitua cada letra em uma string pela letra seguinte no alfabeto (a vira b, p vira q, z vira a).

  Números e outros caracteres devem permanecer inalterados.

  *Exemplo de entrada*

  ```
  Digite uma string: teste123
  ```

  *Exemplo de saída*

  ```
  Resultado: uftuf123
  ```
]

#problem[
  Crie um programa que capitalize a primeira letra de cada palavra em uma string.

  As palavras devem estar separadas por apenas um espaço.

  *Exemplo de entrada*

  ```
  Digite uma frase: exercicios de strings
  ```

  *Exemplo de saída*

  ```
  Resultado: Exercicios De Strings
  ```
]

#problem[
  Crie um programa que encontre a maior palavra em uma string.

  Caso existam várias palavras com o mesmo tamanho máximo, retorne a primeira encontrada.

  *Exemplo de entrada*

  ```
  Digite uma frase: C++ eh uma linguagem de proposito geral.
  ```

  *Exemplo de saída*

  ```
  Maior palavra: proposito
  ```
]

#problem[
  Crie um programa que ordene as letras de uma string em ordem alfabética.

  Números e símbolos de pontuação não devem ser incluídos na ordenação (podem ser removidos ou mantidos nas posições originais).

  *Exemplo de entrada*

  ```
  Digite uma string: computador
  ```

  *Exemplo de saída*

  ```
  Ordenado: acdmooprtu
  ```
]

#problem[
  Crie um programa que verifique se os caracteres 'e' e 'g' estão separados por exatamente 2 posições em algum lugar da string.

  O programa deve contar quantas vezes essa condição ocorre.

  *Exemplo de entrada*

  ```
  Digite uma string: legumes
  ```

  *Exemplo de saída*

  ```
  Ocorrencias de 'e' e 'g' separados por 2 posicoes: 1
  ```

  *Explicação*: Na string "legumes", os caracteres nas posições 1 e 4 são 'e' e 'g' respectivamente, com exatamente 2 caracteres entre eles.
]

#problem[
  Crie um programa que conte todas as vogais (a, e, i, o, u, maiúsculas e minúsculas) em uma string.

  *Exemplo de entrada*

  ```
  Digite uma string: programacao
  ```

  *Exemplo de saída*

  ```
  Numero de vogais: 5
  ```
]

#problem[
  Crie um programa que conte todas as palavras em uma string.

  Palavras são sequências de caracteres separadas por espaços.

  *Exemplo de entrada*

  ```
  Digite uma frase: Python
  ```

  *Exemplo de saída*

  ```
  Numero de palavras: 1
  ```

  *Exemplo de entrada 2*

  ```
  Digite uma frase: C++ eh incrivel
  ```

  *Exemplo de saída 2*

  ```
  Numero de palavras: 3
  ```
]

#problem[
  Crie um programa que verifique se dois caracteres distintos aparecem a mesma quantidade de vezes em uma string.

  O programa deve receber a string e os dois caracteres a serem comparados.

  *Exemplo de entrada*

  ```
  Digite uma string: aabcdeef
  Digite o primeiro caractere: a
  Digite o segundo caractere: e
  ```

  *Exemplo de saída*

  ```
  Os caracteres 'a' e 'e' aparecem igual numero de vezes: True
  ```
]

#problem[
  Crie um programa que verifique se uma string é um palíndromo.

  Um palíndromo é uma palavra, frase ou sequência de caracteres que lida da mesma forma de trás para frente (ex: madam, racecar, arara).

  O programa deve ignorar espaços, pontuação e diferença entre maiúsculas e minúsculas.

  *Exemplo de entrada*

  ```
  Digite uma string: arara
  ```

  *Exemplo de saída*

  ```
  E palindromo: True
  ```

  *Exemplo de entrada 2*

  ```
  Digite uma string: olá
  ```

  *Exemplo de saída 2*

  ```
  E palindromo: False
  ```
]

#problem[
  Crie um programa que verifique se duas strings sao anagramas.

  Anagramas sao palavras ou frases formadas pelas mesmas letras em ordem diferente
  (ex: "amor" e "roma", "listen" e "silent").

  O programa deve ignorar espacos, pontuacao e diferenca entre maiusculas e minusculas.

  *Exemplo de entrada*

  ```
  Digite a primeira string: amor
  Digite a segunda string: roma
  ```

  *Exemplo de saida*

  ```
  Sao anagramas: True
  ```

  *Exemplo de entrada 2*

  ```
  Digite a primeira string: teste
  Digite a segunda string: festa
  ```

  *Exemplo de saida 2*

  ```
  Sao anagramas: False
  ```
]

#problem[
  Crie um programa que implemente a compressao Run-Length Encoding (RLE) em uma string.

  A compressao RLE substitui sequencias repetidas de caracteres pelo caractere
  seguido da quantidade de repeticoes (ex: "aaabbbcc" vira "a3b3c2").

  Se um caractere aparece apenas uma vez, mantenha-o sem numero.

  *Exemplo de entrada*

  ```
  Digite uma string: aaabbbcc
  ```

  *Exemplo de saida*

  ```
  Comprimido: a3b3c2
  ```

  *Exemplo de entrada 2*

  ```
  Digite uma string: abcdef
  ```

  *Exemplo de saida 2*

  ```
  Comprimido: abcdef
  ```
]

#problem[
  Crie um programa que avalie a forca de uma senha.

  Uma senha e considerada forte se atender aos seguintes criterios:
  - Possuir pelo menos 8 caracteres
  - Conter pelo menos uma letra maiuscula (A-Z)
  - Conter pelo menos uma letra minuscula (a-z)
  - Conter pelo menos um numero (0-9)
  - Conter pelo menos um caractere especial (! . , ; )

  O programa deve exibir quais criterios foram atendidos e a classificacao
  final (Fraca, Media ou Forte).

  *Exemplo de entrada*

  ```
  Digite uma senha: Senha123!
  ```

  *Exemplo de saida*

  ```
  Criterios atendidos:
  (OK) Minimo 8 caracteres
  (OK) Letra maiuscula
  (OK) Letra minuscula
  (OK) Numero
  (OK) Caractere especial

  Classificacao: FORTE
  ```

  *Exemplo de entrada 2*

  ```
  Digite uma senha: abc
  ```

  *Exemplo de saida 2*

  ```
  Criterios atendidos:
  (X) Minimo 8 caracteres
  (X) Letra maiuscula
  (OK) Letra minuscula
  (X) Numero
  (X) Caractere especial

  Classificacao: FRACA
  ```
]

#problem[
  Crie um programa que remova espacos desnecessarios de uma string.

  O programa deve:
  - Remover espacos do inicio e do fim da string
  - Substituir multiplos espacos consecutivos por um unico espaco

  *Exemplo de entrada*

  ```
  Digite uma frase:    programacao   em   C++    
  ```

  *Exemplo de saida*

  ```
  Resultado: programacao em C++
  ```

  *Exemplo de entrada 2*

  ```
  Digite uma frase: teste
  ```

  *Exemplo de saida 2*

  ```
  Resultado: teste
  ```
]
