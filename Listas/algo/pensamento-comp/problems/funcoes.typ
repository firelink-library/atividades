#import "../../../../themes/inteli/lib.typ": *

= Funções

#problem[
  Crie uma calculadora com funções separadas para cada operação.

  Implemente quatro funções:
  - `somar(a, b)` - retorna a soma de dois números
  - `subtrair(a, b)` - retorna a diferença entre dois números
  - `multiplicar(a, b)` - retorna o produto de dois números
  - `dividir(a, b)` - retorna a divisão de dois números (verifique divisão por zero!)

  O programa principal deve solicitar dois números ao usuário e exibir o resultado
  de todas as operações.

  *Exemplo de entrada*

  ```
  Digite o primeiro numero: 10
  Digite o segundo numero: 3
  ```

  *Exemplo de saída*

  ```
  Soma: 13
  Subtracao: 7
  Multiplicacao: 30
  Divisao: 3.33
  ```

  *Exemplo de entrada 2 (divisão por zero)*

  ```
  Digite o primeiro numero: 10
  Digite o segundo numero: 0
  ```

  *Exemplo de saída 2*

  ```
  Soma: 10
  Subtracao: 10
  Multiplicacao: 0
  Divisao: Erro! Nao e possivel dividir por zero.
  ```
]

#problem[
  Crie um conversor de temperatura com funções especializadas.

  Implemente três funções de conversão:
  - `celsiusParaFahrenheit(c)` - converte Celsius para Fahrenheit
  - `fahrenheitParaCelsius(f)` - converte Fahrenheit para Celsius
  - `celsiusParaKelvin(c)` - converte Celsius para Kelvin

  Fórmulas:
  - Fahrenheit = (Celsius × 9/5) + 32
  - Celsius = (Fahrenheit - 32) × 5/9
  - Kelvin = Celsius + 273.15

  O programa deve apresentar um menu para o usuário escolher a conversão desejada.

  *Exemplo de uso*

  ```
  === Conversor de Temperatura ===
  1. Celsius para Fahrenheit
  2. Fahrenheit para Celsius
  3. Celsius para Kelvin
  Escolha uma opcao: 1

  Digite a temperatura em Celsius: 25
  Resultado: 25°C = 77°F
  ```
]

#problem[
  Crie uma função que calcule a média ponderada de notas.

  Implemente a função `mediaPonderada(notas[], pesos[], quantidade)` que recebe:
  - Um array de notas
  - Um array de pesos correspondentes
  - A quantidade de notas

  A função deve retornar a média ponderada calculada.

  *Exemplo de uso*

  ```
  Digite a quantidade de notas: 3

  Nota 1: 8.0
  Peso 1: 2

  Nota 2: 7.5
  Peso 2: 3

  Nota 3: 9.0
  Peso 3: 5

  Media ponderada: 8.35
  ```

  *Cálculo*: (8.0×2 + 7.5×3 + 9.0×5) / (2+3+5) = 83.5 / 10 = 8.35

  *Dica importante*: Em C++, arrays são passados por referência implicitamente (como ponteiros). Isso significa que se você modificar os valores dentro do array na função, as alterações afetarão o array original!

  Crie uma função extra `ordenarNotas(notas[], quantidade)` que ordene as notas em ordem crescente usando qualquer algoritmo de ordenação (bubble sort, por exemplo). Observe como o array original é modificado após a chamada da função, demonstrando a passagem por referência.
]

#problem[
  Crie um validador de CPF simplificado.

  Implemente duas funções:
  - `validarFormato(cpf)` - verifica se o CPF tem 11 dígitos numéricos
  - `calcularDigitoVerificador(cpfParcial)` - calcula os dois dígitos verificadores

  O algoritmo para calcular dígitos verificadores:
  1. Primeiro dígito: multiplique os 9 primeiros dígitos por 10,9,8,...,2 e some.
     Divida por 11 e pegue o resto. Se o resto for < 2, o dígito é 0, senão é 11-resto.
  2. Segundo dígito: repita com os 10 dígitos (incluindo o primeiro verificador)

  *Exemplo de entrada*

  ```
  Digite o CPF (somente numeros): 52998224725
  ```

  *Exemplo de saída*

  ```
  CPF valido!
  ```

  *Exemplo de entrada 2*

  ```
  Digite o CPF (somente numeros): 12345678901
  ```

  *Exemplo de saída 2*

  ```
  CPF invalido!
  ```
]

#problem[
  Crie um sistema de pedidos para uma pizzaria.

  Implemente as funções:
  - `calcularPreco(tamanho, quantidadeSabores)` - calcula o valor baseado em:
    - Tamanho P (pequena): R\$ 30,00 + R\$ 5,00 por sabor
    - Tamanho M (média): R\$ 45,00 + R\$ 7,00 por sabor
    - Tamanho G (grande): R\$ 60,00 + R\$ 10,00 por sabor
  - `aplicarDesconto(valor, cupom)` - aplica 10% de desconto se cupom for "PIZZA10"
  - `calcularTroco(valorPago, valorTotal)` - calcula o troco

  *Exemplo de entrada*

  ```
  === Pizzaria do Zé ===
  Tamanho (P/M/G): G
  Quantidade de sabores: 3
  Cupom de desconto: PIZZA10
  Valor pago: 100.00
  ```

  *Exemplo de saída*

  ```
  Resumo do pedido:
  - Pizza G com 3 sabores
  - Subtotal: R\$ 90.00
  - Desconto: R\$ 9.00
  - Total: R\$ 81.00
  - Troco: R\$ 19.00
  ```
]

#problem[
  Crie um simulador de dados para RPG.

  Implemente as funções:
  - `rolarDado(lados)` - simula o lançamento de um dado de N lados (retorna valor aleatório entre 1 e N)
  - `rolarVantagem()` - rola 2d20 e retorna o maior valor (mecânica de vantagem do D&D)
  - `calcularDano(ataque, defesa)` - calcula dano: se ataque > defesa, dano = ataque - defesa + 1d6, senão dano = 0

  O programa deve permitir o usuário escolher que tipo de rolagem fazer.

  *Exemplo de uso*

  ```
  === Simulador de Dados RPG ===
  1. Rolar dado simples
  2. Rolar com vantagem
  3. Calcular dano
  Escolha: 3

  Digite o valor do ataque: 18
  Digite o valor da defesa: 15

  Dano causado: 7 (18-15 + 1d6: 4)
  ```
]

#problem[
  Crie um analisador de desempenho para corredores.

  Implemente as funções:
  - `calcularPace(tempoMinutos, distanciaKm)` - calcula o pace (minutos por km)
  - `classificarCorrida(pace)` - classifica o desempenho:
    - Pace < 5: "Excelente"
    - 5 ≤ Pace < 6: "Bom"
    - 6 ≤ Pace < 7: "Regular"
    - Pace ≥ 7: "Precisa melhorar"
  - `compararCorridas(pace1, pace2)` - retorna qual pace foi melhor e a diferença
  - `projetarTempo(distancia, pace)` - estima o tempo para correr uma distância dada

  *Exemplo de uso*

  ```
  === Analisador de Corrida ===
  Tempo da corrida (minutos): 50
  Distancia percorrida (km): 10

  Pace: 5.00 min/km
  Classificacao: Bom

  Comparar com corrida anterior:
  Pace anterior (min/km): 5.5
  Melhoria: 0.5 min/km mais rapido!

  Projecao para 21km (meia maratona):
  Tempo estimado: 105 minutos (1h45min)
  ```
]
