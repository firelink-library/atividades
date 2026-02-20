#import "../../../../themes/inteli/lib.typ": *

= Exercícios de ENADE

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

#table(
  columns: (auto, auto, auto, 1fr),
  inset: 8pt,
  align: (left + top),
  table.header([*Ano*], [*\#*], [*Curso*], [*Conteúdo*]),

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [20], [Ciência da Computação], [Teoria de Grafos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [21], [Ciência da Computação], [Pilha e Fila no contexto da Genética],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [24], [Ciência da Computação], [Fila de Prioridade (Heap)],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [28], [Ciência da Computação], [Análise e Projeto de Algoritmos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [30], [Ciência da Computação], [Árvore Binária],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [D03], [Ciência da Computação], [Fibonacci Recursivo],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2011/COMPUTACAO.pdf", "2011"), [D04], [Ciência da Computação], [Algoritmos de Ordenação e Listas Ordenadas],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [D03], [Ciência da Computação], [Busca Recursiva],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [D05], [Ciência da Computação], [Análise e Projeto de Algoritmos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [12], [Ciência da Computação], [Análise de Algoritmos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [13], [Ciência da Computação], [Árvore Binária],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [16], [Ciência da Computação], [Pilha em C],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2014/03_computacao_bacharelado.pdf", "2014"), [23], [Ciência da Computação], [Algoritmos Recursivos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [D03], [Ciência da Computação], [Lista Ligada],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [D05], [Ciência da Computação], [Busca em Profundidade],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [09], [Ciência da Computação], [Árvore Balanceada (AVL)],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [18], [Ciência da Computação], [Algoritmos de Ordenação, Array em C],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [22], [Ciência da Computação], [Algoritmo Guloso],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [24], [Ciência da Computação], [Algoritmos em Grafos],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [25], [Ciência da Computação], [Análise de Fibonacci Recursivo],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2017/03_CIE_COM_BACHAREL_BAIXA.pdf", "2017"), [33], [Ciência da Computação], [Função Recursiva],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2019/ENGENHARIA_COMPUTACAO.pdf", "2019"), [D03], [Engenharia da Computação], [Árvore Binária e AVL],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2019/ENGENHARIA_COMPUTACAO.pdf", "2019"), [D04], [Engenharia da Computação], [Produtório Iterativo vs Recursivo],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2019/ENGENHARIA_COMPUTACAO.pdf", "2019"), [09], [Engenharia da Computação], [Algoritmo de Ordenação],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2019/ENGENHARIA_COMPUTACAO.pdf", "2019"), [24], [Engenharia da Computação], [Spanning Tree no contexto de Algoritmos de Roteamento],

  link-style("http://download.inep.gov.br/educacao_superior/enade/provas/2019/ENGENHARIA_COMPUTACAO.pdf", "2019"), [25], [Engenharia da Computação], [Busca Recursiva em Python],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2021_PV_bacharelado_ciencia_computacao.pdf", "2021"), [D05], [Ciência da Computação], [Heap Binário],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2021_PV_bacharelado_ciencia_computacao.pdf", "2021"), [20], [Ciência da Computação], [Análise de Algoritmos em C],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2021_PV_bacharelado_ciencia_computacao.pdf", "2021"), [23], [Ciência da Computação], [Árvore Binária],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2021_PV_bacharelado_ciencia_computacao.pdf", "2021"), [32], [Ciência da Computação], [Algoritmos de Ordenação],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2021_PV_bacharelado_ciencia_computacao.pdf", "2021"), [34], [Ciência da Computação], [Algoritmo de Dijkstra],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2023_PV_engenharia_da_computacao.pdf", "2023"), [D02], [Engenharia da Computação], [Algoritmo de Ordenação],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2023_PV_engenharia_da_computacao.pdf", "2023"), [15], [Engenharia da Computação], [Vazamento de Memória],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2023_PV_engenharia_da_computacao.pdf", "2023"), [18], [Engenharia da Computação], [Arrays Dinâmicos],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2023_PV_engenharia_da_computacao.pdf", "2023"), [32], [Engenharia da Computação], [Busca Gulosa em Grafos],

  link-style("https://download.inep.gov.br/enade/provas_e_gabaritos/2023_PV_engenharia_da_computacao.pdf", "2023"), [34], [Engenharia da Computação], [Filas no contexto de Redes de Computadores],
)
