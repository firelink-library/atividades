# Plano: 30 Questões ENADE — Estruturas de Dados e Algoritmos

## Contexto

Simulado ENADE com 30 questões cobrindo os principais tópicos de Estruturas de Dados e Algoritmos. Todos os exemplos de código usam **C++ ou pseudocódigo**. O plano aqui cobre apenas a distribuição e estrutura da prova — a geração de cada questão usa o skill `enade-item-creator` individualmente.

---

## Grade de Questões (30 no total)

| # | Tópico | Subtópico | Tipo | Dificuldade |
|---|--------|-----------|------|-------------|
| 01 | Estruturas Lineares | Pilha — operações push/pop | Resposta Única | Fácil |
| 02 | Estruturas Lineares | Fila — FIFO e operações | Resposta Única | Fácil |
| 03 | Estruturas Lineares | Lista encadeada — travessia e ponteiros | Resposta Múltipla | Fácil |
| 04 | Estruturas Lineares | Pilha — aplicação (conversão infix/postfix) | Asserção-Razão | Média |
| 05 | Estruturas Lineares | Deque / fila de prioridade | Resposta Única | Média |
| 06 | Árvores e Heaps | BST — inserção e percursos | Resposta Única | Fácil |
| 07 | Árvores e Heaps | BST — busca e comparação com vetor ordenado | Asserção-Razão | Média |
| 08 | Árvores e Heaps | Percursos — pré-ordem, em-ordem e pós-ordem com análise de resultado | Resposta Múltipla | Média |
| 09 | Recursão | Recursão de cauda — definição, eliminação e equivalência iterativa | Asserção-Razão | Média |
| 10 | Árvores e Heaps | Heap — complexidade e extração | Resposta Múltipla | Difícil |
| 11 | Grafos | Representação — matriz vs lista de adjacência | Resposta Única | Fácil |
| 12 | Grafos | DFS — sequência de visita | Resposta Única | Fácil |
| 13 | Grafos | BFS — menor caminho não ponderado | Resposta Múltipla | Média |
| 14 | Grafos | Dijkstra — estimativas de custo após k iterações | Resposta Única | Média |
| 15 | Grafos | Kruskal / Prim — spanning tree mínima | Asserção-Razão | Difícil |
| 16 | Ordenação e Busca | Busca linear vs busca binária | Resposta Múltipla | Fácil |
| 17 | Ordenação e Busca | Insertion Sort — invariante e estabilidade | Resposta Única | Fácil |
| 18 | Ordenação e Busca | MergeSort — divisão, merge e complexidade | Resposta Múltipla | Média |
| 19 | Ordenação e Busca | QuickSort — pivot, partição e pior caso | Asserção-Razão | Média |
| 20 | Ordenação e Busca | Comparação entre algoritmos (estabilidade, complexidade) | Resposta Múltipla | Difícil |
| 21 | Recursão | Fibonacci recursivo — árvore de chamadas e complexidade | Resposta Única | Média |
| 22 | Recursão | Recursão vs iteração — trade-offs de pilha e memória | Asserção-Razão | Média |
| 23 | Análise de Algoritmos | Notação Big-O — identificação de classe a partir de código | Resposta Única | Fácil |
| 24 | Análise de Algoritmos | Comparação entre duas implementações — Big-O de tempo e espaço | Resposta Múltipla | Média |
| 25 | Análise de Algoritmos | Análise amortizada — vetor dinâmico com dobramento | Resposta Única | Difícil |
| 26 | Padrões de Algoritmos | Divisão e conquista — reconhecimento e uso | Resposta Única | Média |
| 27 | Padrões de Algoritmos | Algoritmo guloso vs programação dinâmica | Asserção-Razão | Difícil |
| 28 | Estruturas Lineares | Tabela hash — colisão e resolução (encadeamento vs endereçamento aberto) | Resposta Múltipla | Média |
| 29 | Análise de Algoritmos | Complexidade de espaço — comparação entre algoritmos | Resposta Única | Média |
| 30 | Estruturas Lineares | Listas e memória dinâmica — alocação, ponteiros e memory leak em C++ | Resposta Única | Fácil |
| 31 | Grafos | Sistema de entrega urbana — modelagem, alcançabilidade, Dijkstra e extensões (VRP) | **Dissertativa** | Muito Alta |

---

## Distribuição por Tipo

| Tipo | Quantidade |
|------|-----------|
| Resposta Única | 15 |
| Resposta Múltipla | 9 |
| Asserção-Razão | 6 |
| **Total** | **30** |

Meta: ~15 resposta única / ~10 múltipla / ~5 asserção-razão. ✅

---

## Distribuição por Dificuldade

| Dificuldade | Quantidade |
|-------------|-----------|
| Fácil | 9 |
| Média | 15 |
| Difícil | 6 |
| **Total** | **30** |

Meta: ~10 fáceis / ~15 médias / ~5 difíceis. ✅ (próximo da meta — 1 questão fácil abaixo e 1 difícil acima)

---

## Como gerar as questões

Para cada linha da grade, executar o skill `enade-item-creator` com os inputs:

```bash
/enade-item-creator --tipo "<Tipo>" --dificuldade "<Dificuldade>" --assunto "<Subtópico>" --linguagem "C++"
```

### Exemplo para Questão 01:
```bash
/enade-item-creator --tipo "Resposta Única" --dificuldade "Fácil" --assunto "Pilha — operações push/pop" --linguagem "C++"
```

O skill seguirá o workflow obrigatório:
1. Buscar exemplos em `examples/index.md`
2. Sortear a letra correta via `scripts/random_gabarito.py`
3. Gerar o item completo
4. Acionar o subagente `adversario` para revisão automática
5. Processar feedback (APROVADO/REPROVADO)
6. Salvar em `output/algoritmos-e-estruturas-de-dados_<subtopico>_<tipo>.md`

---

## Próximos Passos

### Fase 1 — Validação ✓
- [x] Grade de 30 questões definida
- [x] Distribuição validada (15/9/6 por tipo, 9/15/6 por dificuldade)
- [x] Plano salvo

### Fase 2 — Geração (A fazer)
Gerar as questões em lotes por tópico ou sequencialmente:
- **Estruturas Lineares** (Q01-05, 28, 30) — 7 questões
- **Árvores e Heaps** (Q06-10) — 5 questões
- **Grafos** (Q11-15) — 5 questões
- **Ordenação e Busca** (Q16-20) — 5 questões
- **Recursão** (Q09, 21-22) — 3 questões
- **Análise de Algoritmos** (Q23-25, 29) — 4 questões
- **Padrões de Algoritmos** (Q26-27) — 2 questões

### Fase 3 — Compilação e Revisão Final
Após gerar todas as questões:
- Verificar que todas as 30 questões foram geradas
- Revisar APROVADO/REPROVADO de cada questão
- Compilar em documento único (PDF ou Markdown)

---

## Comando para iniciar a geração em lote

Para gerar questões de uma determinada categoria, execute na ordem desejada:

```bash
# Estruturas Lineares
/enade-item-creator --tipo "Resposta Única" --dificuldade "Fácil" --assunto "Pilha — operações push/pop" --linguagem "C++"
/enade-item-creator --tipo "Resposta Única" --dificuldade "Fácil" --assunto "Fila — FIFO e operações" --linguagem "C++"
# ... e assim sucessivamente
```

---

## Observações

- Todos os itens devem ser gerados com a ferramenta `enade-item-creator`
- Cada questão passa por revisão automática do subagente `adversario`
- Linguagem padrão: **C++ ou pseudocódigo**
- Formato de saída: markdown com gabarito, justificativas e meta-dados
- **Q31** é dissertativa (criada manualmente) — arquivo: `output/algoritmos-e-estruturas-de-dados_grafos-sistema-entrega_dissertativa.md`
