#import "../../../../themes/inteli/lib.typ": *

= Tipos de variáveis e operações

#problem[
  Em C++, existem diferentes tipos de variáveis. Estão entre as mais simples (e
  mais usadas):

  #table(
    columns: (1fr, 3fr, 3fr),
    inset: 10pt,
    align: horizon,
    table.header([*Tipo*], [*Descrição*], [*Exemplo*]),
    [`int`], [Números inteiros], [`int x = 10;`],
    [`float`], [Números decimais (precisão simples)], [`float y = 3.14;`],
    [`double`], [Números decimais (precisão dupla)], [`double z = 3.14159;`],
    [`char`], [Um único caractere], [`char c = 'A';`],
    [`bool`], [Valores verdadeiro/falso], [`bool ok = true;`],
  )

  Crie um programa que exibe quantos *bytes* ocupa cada um destes tipos de
  variáveis.
]

#problem[
  Os tipos `float` e `double` armazenam números decimais, mas com diferentes
  níveis de precisão. O `float` possui aproximadamente 6-7 dígitos de precisão,
  enquanto o `double` possui cerca de 15-16 dígitos.

  Crie um programa que realize a mesma operação matemática com ambos os tipos
  e compare os resultados. Realize o seguinte cálculo com cada tipo:

  $ x = 1.0 / 3.0 + 1.0 / 3.0 + 1.0 / 3.0 $

  O resultado matemático exato é 1.0. O programa deve exibir:

  1. O resultado obtido com `float`
  2. O resultado obtido com `double`
  3. A diferença entre cada resultado e o valor esperado (1.0)

  *Dica*: Defina o resultado esperado como uma constante e calcule o erro
  absoluto de cada aproximação.

  *Exemplo de saída esperada*

  ```
  Com float:  0.9999999403953552
  Com double: 0.9999999999999999
  Erro float:  5.9604645e-08
  Erro double: 1.1102230e-16
  ```
]

#problem[
  Em C++, cada caractere (`char`) possui um valor inteiro correspondente na
  tabela ASCII (American Standard Code for Information Interchange). A tabela
  ASCII associa números de 0 a 127 a caracteres específicos:

  - Códigos 48-57: dígitos '0' a '9'
  - Códigos 65-90: letras maiúsculas 'A' a 'Z'
  - Códigos 97-122: letras minúsculas 'a' a 'z'

  Por exemplo, o caractere 'A' corresponde ao valor inteiro 65.

  Crie um programa que declare uma variável do tipo `char` com o valor 'A',
  e exiba:

  1. O caractere em si
  2. O valor inteiro correspondente (utilizando *type casting* para `int`)
]

#problem[
  Crie um programa em C++ capaz de transformar um caractere digitado pelo
  usuário em maiúsculo.

  *Exemplo de entrada*

  ```
  Digite um caractere: a
  ```

  *Exemplo de saída*

  ```
  A
  ```
]

#problem[
  Construa um programa que permita que o usuário informe os 3
  lados de um triângulo, A, B e C. Apresente para ele o valor
  da área do triângulo utilizando a fórmula de Herão.

  A fórmula de Herão calcula a área a partir dos três lados do triângulo:

  $ A = sqrt(s(s-a)(s-b)(s-c)) $

  Onde $s$ é o semi-perímetro, calculado por:

  $ s = (a + b + c) / 2 $

  *Exemplo de entrada*

  ```
  Digite o lado A: 3
  Digite o lado B: 4
  Digite o lado C: 5
  ```

  *Exemplo de saída*

  ```
  Area: 6.0
  ```
]

#problem[
  Elabore um programa capaz de converter a temperatura
  monitorada em graus Celsius (C), informada por um usuário, para graus
  Kelvin (K) e Fahrenheit (F).

  As fórmulas de conversão são:

  - Kelvin: $K = C + 273.15$
  - Fahrenheit: $F = (C times 9/5) + 32$

  *Exemplo de entrada*

  ```
  Digite a temperatura em Celsius: 25
  ```

  *Exemplo de saída*

  ```
  Kelvin: 298.15
  Fahrenheit: 77.0
  ```
]
