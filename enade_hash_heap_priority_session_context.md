# Contexto de retomada: lista ENADE nova sobre HashMap, Heaps e Priority Queues

Data da sessao: 2026-05-27

## Objetivo do usuario

Criar uma lista de exercicios ineditos no padrao novo do ENADE sobre:

- Hashmaps / tabelas hash
- Priority queues / filas de prioridade
- Heaps

Distribuicao desejada por assunto:

- 5 questoes por assunto
- 2 faceis, diretas, com pouco contexto
- 2 medias, com texto-base consideravel; pode incluir codigo/pseudocodigo
- 1 dificil, com contexto longo de leitura e possivelmente codigo

Todas as questoes devem seguir o modelo novo ENADE:

- resposta unica
- exatamente 4 alternativas, de A a D
- 1 alternativa correta
- distratores plausiveis
- sem formatos antigos de assercao-razao

O usuario quer que as questoes tambem guiem progressivamente a implementacao das estruturas, sem entregar a estrutura completa de uma vez. O foco e ir construindo conceitos e operacoes ao longo das questoes.

## Estado dos subagentes

Foram disparados subagentes para HashMap, Heaps e Priority Queues.

- HashMap retornou 5 questoes completas.
- Heaps retornou 5 questoes completas.
- Priority Queues travou/retornou vazio. Ao retomar o subagente, ele confirmou: "Nao ha rascunho recuperavel produzido na execucao anterior."

Depois, foi criado um agente global Qwen para revisao adversarial:

Arquivo criado:

```text
/home/rnicola/.config/opencode/agent/executor-qwen.md
```

Modelo configurado:

```text
opencode-go/qwen-3.6-plus
```

Importante: o opencode precisa ser reiniciado para que o novo subagente `executor-qwen` apareca como `subagent_type` disponivel na sessao.

## Proximo passo combinado

Apos reiniciar o opencode:

1. Retomar deste arquivo.
2. Consolidar as 5 questoes de HashMap e as 5 questoes de Heaps.
3. Ajustar as duas questoes medias de cada assunto para terem texto-base consideravel.
4. Usar as duas questoes dificeis reescritas abaixo, com contexto longo.
5. Rodar varias instancias do subagente `executor-qwen` como revisores adversariais.
6. Corrigir apenas erros reais apontados pelos revisores; ignorar comentarios delirantes ou preferencias sem impacto.
7. Se houver correcao real, rodar nova revisao adversarial na questao corrigida.
8. Quando HashMap e Heaps estiverem validados, gerar um arquivo Typst e compilar um PDF com essas 10 questoes.
9. No PDF para os estudantes, deixar espaco em branco apos cada questao no lugar do gabarito/justificativa. Nao mostrar gabarito nem justificativas no corpo da prova.

## Questao dificil ajustada: HashMap

### Texto-base

Em uma implementacao de tabela hash baseada na interface de mapas, cada chave deve estar associada a no maximo um valor. A operacao de insercao, quando recebe uma chave ja existente, substitui o valor anterior; quando recebe uma chave nova, acrescenta um novo mapeamento. O desempenho esperado das operacoes `get` e `put` costuma ser proximo de tempo constante quando a funcao hash distribui bem as chaves entre os buckets.

Entretanto, esse desempenho depende de decisoes de implementacao. A capacidade da tabela corresponde ao numero de buckets disponiveis, e o fator de carga determina o quanto a tabela pode ficar cheia antes de ser redimensionada. Quando a quantidade de entradas ultrapassa `capacidade * fatorDeCarga`, a tabela precisa ser reconstruida com mais buckets, e os elementos existentes devem ser reposicionados segundo a nova capacidade. Um fator de carga mais alto reduz o uso de memoria, mas tende a aumentar o custo das buscas; um fator mais baixo reduz colisoes, mas aumenta o espaco ocupado e pode prejudicar iteracoes que percorrem a estrutura interna.

Considere que uma equipe esta implementando uma tabela hash didatica com encadeamento separado. Cada bucket armazena uma lista de pares `(chave, valor)`. A funcao hash disponivel para testes e:

```text
h(k) = k mod capacidade
```

A estrutura mantem os campos:

```text
buckets: vetor de listas
capacidade: numero de buckets
tamanho: numero de pares armazenados
fatorDeCarga: 0,75
```

A equipe escreveu o seguinte esboco para `put`:

```text
put(chave, valor):
    se (tamanho + 1) / capacidade > fatorDeCarga:
        redimensionar()

    i = h(chave)
    para cada par em buckets[i]:
        se par.chave == chave:
            par.valor = valor
            retornar

    adicionar (chave, valor) em buckets[i]
    tamanho = tamanho + 1
```

No teste inicial, a capacidade e `8`. Sao inseridas, nessa ordem, as chaves:

```text
10, 18, 26, 3, 11, 19
```

Depois disso, a equipe executa:

```text
put(18, "novo")
put(27, "x")
```

A implementacao deve preservar tres propriedades: atualizar corretamente valores de chaves existentes, contar o tamanho como numero de chaves distintas e redimensionar a tabela no momento adequado para manter o fator de carga planejado.

### Comando

Qual decisao de implementacao preserva corretamente essas propriedades?

(A) Atualizar o valor de `18` sem alterar `tamanho`; antes de inserir `27`, redimensionar a tabela, recalcular os buckets das chaves existentes e entao inserir a nova chave.

(B) Atualizar o valor de `18` e incrementar `tamanho`; antes de inserir `27`, manter a capacidade, pois a atualizacao anterior ocupou um bucket ja existente.

(C) Inserir outro par com chave `18` no mesmo bucket; antes de inserir `27`, redimensionar a tabela, mantendo os pares nos mesmos indices internos.

(D) Substituir toda a lista do bucket de `18` pelo novo par; antes de inserir `27`, manter a capacidade, pois colisoes por encadeamento dispensam controle de carga.

### Gabarito interno

Letra A

### Justificativas internas

(A) CERTA. A chave `18` ja existe, entao o valor e substituido sem aumento de `tamanho`. Apos seis chaves distintas em capacidade `8`, a proxima chave nova levaria a ocupacao para `7/8`, ultrapassando `0,75`; por isso, o redimensionamento deve ocorrer antes da insercao de `27`, com redistribuicao das chaves pela nova capacidade.

(B) ERRADA. Atualizar uma chave existente nao cria novo mapeamento. Incrementar `tamanho` nesse caso distorce o fator de carga e antecipa ou atrasa redimensionamentos futuros.

(C) ERRADA. Duplicar a chave quebra a semantica de mapa. Alem disso, apos redimensionar, os indices devem ser recalculados, pois `k mod capacidade` depende da nova capacidade.

(D) ERRADA. Substituir o bucket inteiro remove outras chaves que colidiram com `18`. Encadeamento separado trata colisoes, mas ainda precisa controlar crescimento para evitar listas longas e degradacao de desempenho.

## Questao dificil ajustada: Heaps

### Texto-base

Heaps binarios sao frequentemente usados para implementar filas de prioridade. Em um min-heap armazenado em vetor com indice inicial `0`, cada posicao `k` deve obedecer a relacao:

```text
heap[k] <= heap[2*k + 1]
heap[k] <= heap[2*k + 2]
```

quando os filhos existem. Assim, o menor elemento fica na raiz, em `heap[0]`. A insercao costuma colocar o novo elemento no final do vetor e aplicar subida (`sift-up`). A remocao da raiz costuma mover o ultimo elemento para a raiz e aplicar descida (`sift-down`), escolhendo o filho de menor prioridade para restaurar a propriedade do heap.

Em aplicacoes reais, a fila de prioridade pode armazenar tuplas em vez de valores simples. Uma tecnica comum e representar cada tarefa como:

```text
(prioridade, ordem, tarefa)
```

A prioridade define quem deve sair primeiro. O campo `ordem` funciona como desempate para tarefas com a mesma prioridade, preservando a ordem de chegada. Esse formato tambem evita depender da comparacao direta entre objetos de tarefa.

Outro problema pratico aparece quando uma tarefa precisa ser cancelada ou ter sua prioridade alterada. Remover um item arbitrario do meio do vetor pode quebrar os invariantes do heap e exigir busca linear. Uma solucao usual combina heap com dicionario: o dicionario aponta para a entrada ativa de cada tarefa; ao cancelar ou atualizar, a entrada antiga e marcada como removida; na atualizacao, uma nova entrada e inserida com a nova prioridade. Durante a extracao, entradas marcadas como removidas sao descartadas ate que uma entrada ativa seja encontrada.

Considere a seguinte fila de eventos de uma simulacao. Quanto menor o tempo, maior a prioridade de execucao. As entradas tem o formato `(tempo, ordem, evento)`.

```text
Inicialmente inseridas:
(8, 0, "coletar_logs")
(3, 1, "sincronizar_sensor")
(5, 2, "enviar_alerta")
(3, 3, "atualizar_painel")
(7, 4, "compactar_backup")
```

Antes de iniciar a execucao dos eventos, ocorrem as seguintes alteracoes:

```text
cancelar "sincronizar_sensor"
atualizar "compactar_backup" para tempo 2, inserindo (2, 5, "compactar_backup")
inserir (5, 6, "verificar_rede")
atualizar "enviar_alerta" para tempo 1, inserindo (1, 7, "enviar_alerta")
```

As entradas antigas de `"sincronizar_sensor"`, `"compactar_backup"` e `"enviar_alerta"` continuam fisicamente no heap, mas ficam marcadas como removidas. A operacao `pop_evento` executa o seguinte comportamento:

```text
enquanto heap nao estiver vazio:
    remover raiz
    restaurar heap com sift-down
    se a entrada removida estiver ativa:
        remover entrada do dicionario
        retornar evento
    caso contrario:
        descartar entrada e continuar
```

A simulacao chama `pop_evento` quatro vezes para obter quatro eventos validos.

### Comando

Qual alternativa apresenta, na ordem correta, os quatro eventos retornados e a justificativa estrutural da operacao?

(A) `"enviar_alerta"`, `"compactar_backup"`, `"atualizar_painel"`, `"verificar_rede"`; entradas removidas sao descartadas na extracao, e cada remocao da raiz e seguida por `sift-down`.

(B) `"compactar_backup"`, `"enviar_alerta"`, `"sincronizar_sensor"`, `"atualizar_painel"`; a atualizacao de prioridade reposiciona a entrada antiga dentro do heap antes da extracao.

(C) `"enviar_alerta"`, `"sincronizar_sensor"`, `"atualizar_painel"`, `"verificar_rede"`; o desempate por ordem preserva a primeira entrada inserida com tempo `3`.

(D) `"atualizar_painel"`, `"enviar_alerta"`, `"verificar_rede"`, `"compactar_backup"`; a descida escolhe o filho esquerdo em cada nivel para manter a forma completa.

### Gabarito interno

Letra A

### Justificativas internas

(A) CERTA. A entrada ativa de `"enviar_alerta"` tem tempo `1`; a de `"compactar_backup"` tem tempo `2`; `"atualizar_painel"` permanece com tempo `3`; `"verificar_rede"` tem tempo `5` e ordem posterior a entrada antiga removida de `"enviar_alerta"`. As entradas antigas marcadas como removidas podem chegar a raiz, mas sao descartadas durante `pop_evento`.

(B) ERRADA. A estrategia descrita nao reposiciona a entrada antiga. Ela marca a entrada anterior como removida e insere uma nova entrada com a prioridade atualizada.

(C) ERRADA. `"sincronizar_sensor"` foi cancelado, entao sua entrada antiga deve ser descartada quando removida do heap.

(D) ERRADA. A escolha do filho durante `sift-down` depende da menor tupla `(tempo, ordem, evento)`, e nao de uma direcao fixa no vetor.

## Rascunho original: HashMap

### Questao 1 - Facil

Uma tabela hash inicial possui `m = 10` posicoes. Para chaves inteiras, usa-se a funcao:

```text
h(k) = k mod 10
```

Na primeira etapa de implementacao, deseja-se calcular o indice de armazenamento das chaves `21`, `31` e `42`.

Qual resultado orienta corretamente essa etapa?

(A) `21` e `31` ocupam o indice `1`, enquanto `42` ocupa o indice `2`.

(B) `21` ocupa o indice `2`, `31` ocupa o indice `3` e `42` ocupa o indice `4`.

(C) `21` e `42` ocupam o indice `1`, enquanto `31` ocupa o indice `2`.

(D) `31` e `42` ocupam o indice `2`, enquanto `21` ocupa o indice `1`.

Gabarito interno: A

### Questao 2 - Facil

Apos calcular indices, a proxima etapa da implementacao usa encadeamento separado. Cada posicao do vetor armazena uma lista de pares `(chave, valor)`. Considere a operacao:

```text
inserir(chave, valor):
    i = h(chave)
    percorrer lista[i]
    se encontrar a chave, atualizar seu valor
    caso contrario, adicionar (chave, valor) a lista[i]
```

Qual decisao e adequada para preservar o comportamento de um hashmap?

(A) Criar uma nova lista para cada insercao realizada na tabela.

(B) Atualizar o valor quando a chave ja existir no bucket calculado.

(C) Substituir o bucket inteiro quando ocorrer colisao entre duas chaves.

(D) Ordenar todos os buckets apos cada insercao feita na tabela.

Gabarito interno: B

### Questoes 3 e 4 de HashMap

Devem ser ajustadas para terem texto-base consideravel. Ideia combinada:

- Questao 3: texto sobre unicidade de chaves, atualizacao de valor e pseudocodigo de `put`.
- Questao 4: texto sobre fator de carga, capacidade e redimensionamento, incluindo pequena tabela de estado.

## Rascunho original: Heaps

### Questao 1 - Facil

Texto-base: Em um min-heap binario armazenado em vetor com indice inicial 0, cada pai deve ter valor menor ou igual aos valores de seus filhos. Para inserir um novo elemento, ele e colocado no fim do vetor e sobe enquanto violar a propriedade do heap.

Comando: Considere o min-heap representado por `H = [4, 9, 7, 15, 12, 20]`. Apos inserir o valor `3` usando `sift-up`, qual vetor representa corretamente o heap resultante?

(A) `[3, 9, 4, 15, 12, 20, 7]`
(B) `[4, 3, 7, 9, 12, 20, 15]`
(C) `[3, 4, 7, 9, 12, 20, 15]`
(D) `[4, 9, 3, 15, 12, 20, 7]`

Gabarito interno: A

### Questao 2 - Facil

Texto-base: Em um max-heap binario, o maior valor fica na raiz. Para extrair a raiz, move-se o ultimo elemento para a raiz e aplica-se `sift-down`, trocando com o maior filho quando a propriedade do heap for violada.

Comando: Considere o max-heap `H = [50, 30, 40, 10, 20, 35]`. Apos extrair o maior elemento, qual vetor representa o heap resultante?

(A) `[35, 30, 40, 10, 20]`
(B) `[40, 30, 35, 10, 20]`
(C) `[30, 20, 40, 10, 35]`
(D) `[40, 35, 30, 10, 20]`

Gabarito interno: B

### Questoes 3 e 4 de Heaps

Devem ser ajustadas para terem texto-base consideravel. Ideia combinada:

- Questao 3: texto e pseudocodigo incompleto de `sift-up`, com indice inicial 0.
- Questao 4: texto sobre construcao bottom-up (`build-heap`) e vetor inicial, exigindo identificar indice inicial e resultado.

## Fontes online ja consultadas

Durante a conversa, foram consultadas:

- Documentacao Java `HashMap` Java SE 21: https://docs.oracle.com/en/java/javase/21/docs/api/java.base/java/util/HashMap.html
- Documentacao Python `heapq`: https://docs.python.org/3/library/heapq.html

Essas fontes embasam os textos sobre fator de carga, capacidade, redimensionamento, operacoes `get`/`put`, invariantes de heap, indice inicial 0, `heapify`, `heappush`, `heappop`, filas de prioridade, tuplas com prioridade/ordem/tarefa e marcacao de entradas removidas.
