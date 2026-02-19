#import "../../../../themes/inteli/lib.typ": *

= Estruturas condicionais

#problem[
  Crie um programa que receba três números inteiros do usuário e os exiba em
  ordem crescente.

  *Exemplo de entrada*

  ```
  Digite o primeiro número: 25
  Digite o segundo número: 10
  Digite o terceiro número: 18
  ```

  *Exemplo de saída*

  ```
  Ordem crescente: 10 18 25
  ```
]

#problem[
  Crie um programa que receba um número inteiro do usuário e verifique se ele é
  par ou ímpar.

  *Exemplo de entrada 1*

  ```
  Digite um número: 42
  ```

  *Exemplo de saída 1*

  ```
  Par
  ```

  *Exemplo de entrada 2*

  ```
  Digite um número: 17
  ```

  *Exemplo de saída 2*

  ```
  Ímpar
  ```
]

#problem[
  Crie um programa que receba um caractere do usuário e o transforme em
  maiúsculo, mas apenas se for possível capitalizá-lo (ou seja, se for uma
  letra minúscula).

  O programa deve verificar:
  - Se o caractere é uma letra minúscula (a-z), convertê-lo para maiúsculo
  - Se o caractere já é maiúsculo, exibir uma mensagem informando
  - Se for um número ou símbolo, exibir que não é uma letra

  *Dica*: Utilize condicionais (`if-else`) para verificar se o caractere está
  na faixa de letras minúsculas (valores ASCII 97 a 122).

  *Exemplo de entrada 1*

  ```
  Digite um caractere: a
  ```

  *Exemplo de saída 1*

  ```
  Maiúsculo: A
  ```

  *Exemplo de entrada 2*

  ```
  Digite um caractere: 5
  ```

  *Exemplo de saída 2*

  ```
  Nao e uma letra.
  ```

  *Exemplo de entrada 3*

  ```
  Digite um caractere: Z
  ```

  *Exemplo de saída 3*

  ```
  Ja esta em maiusculo.
  ```
]

#problem[
  Tendo como dado de entrada a altura (h) de uma pessoa e seu sexo (M ou F),
  construa um programa que calcule seu peso ideal, utilizando as seguintes fórmulas:

  - Para homens: $(72.7 times h) - 58$
  - Para mulheres: $(62.1 times h) - 44.7$

  O programa deve solicitar a altura e o sexo, e exibir o peso ideal calculado.

  *Exemplo de entrada 1*

  ```
  Digite sua altura em metros: 1.75
  Digite seu sexo (M/F): M
  ```

  *Exemplo de saída 1*

  ```
  Peso ideal: 69.225 kg
  ```

  *Exemplo de entrada 2*

  ```
  Digite sua altura em metros: 1.60
  Digite seu sexo (M/F): F
  ```

  *Exemplo de saída 2*

  ```
  Peso ideal: 54.66 kg
  ```
]

#problem[
  Crie um programa que resolva equações de segundo grau da forma
  $a x^2 + b x + c = 0$ utilizando a fórmula de Bhaskara.

  A fórmula de Bhaskara é:

  $ x = (-b plus.minus sqrt(Delta)) / (2 a) $

  Onde

  #figure($Delta = b^2 - 4 a c$)

  O programa deve:

  - Verificar se $a eq 0$ (não é equação de segundo grau)
  - Calcular o discriminante ($Delta$)
  - Verificar se há raízes reais:
    - Se $Delta < 0$: equação não possui raízes reais
    - Se $Delta = 0$: equação possui uma raiz real
    - Se $Delta > 0$: equação possui duas raízes reais

  *Exemplo de entrada 1*

  ```
  Digite o valor de a: 1
  Digite o valor de b: -5
  Digite o valor de c: 6
  ```

  *Exemplo de saída 1*

  ```
  Delta: 1
  Raiz 1: 3
  Raiz 2: 2
  ```

  *Exemplo de entrada 2*

  ```
  Digite o valor de a: 1
  Digite o valor de b: 2
  Digite o valor de c: 5
  ```

  *Exemplo de saída 2*

  ```
  Delta: -16
  Equacao nao possui raizes reais.
  ```
]

#problem[
  Uma loja de tintas possui tres tipos de latas disponiveis, com precos que
  incentivam a compra de latas maiores (custo por litro menor):

  - Lata de 20 litros: R\$ 180,00 (R\$ 9,00/litro)
  - Lata de 12 litros: R\$ 130,00 (R\$ 10,83/litro)
  - Lata de 5 litros: R\$ 55,00 (R\$ 11,00/litro)

  Cada litro de tinta pinta 3 metros quadrados de parede. Crie um programa
  que receba a area a ser pintada e calcule a combinacao de latas que
  minimize o custo total.

  O programa deve considerar todas as combinacoes possiveis e escolher a mais
  economica, garantindo que a quantidade total de tinta seja suficiente
  (pode haver sobra de tinta).

  *Exemplo de entrada*

  ```
  Digite o tamanho da area a ser pintada (m2): 85
  ```

  *Exemplo de saida*

  ```
  Litros necessarios: 28.33
  Melhor combinacao:
  - 1 lata de 20L (R\$ 180.00)
  - 1 lata de 12L (R\$ 130.00)
  Custo total: R\$ 310.00
  ```

  *Exemplo de entrada 2*

  ```
  Digite o tamanho da area a ser pintada (m2): 30
  ```

  *Exemplo de saida 2*

  ```
  Litros necessarios: 10.00
  Melhor combinacao:
  - 1 lata de 12L (R\$ 130.00)
  Custo total: R\$ 130.00
  ```

  *Dica*: Teste diferentes combinacoes considerando que pode ser mais barato
  comprar uma lata maior do que varias menores (por exemplo, 1 lata de 20L
  custa menos que 4 latas de 5L).
]
