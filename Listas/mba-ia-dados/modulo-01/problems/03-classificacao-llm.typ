#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Classificação automática com LLM

#set-problem-counter(3)
#problem[
  Uma empresa recebe relatos internos de colaboradores sobre problemas operacionais. Esses relatos chegam via formulário e são registrados em uma planilha.

  Hoje, um gestor precisa ler manualmente cada relato e classificar como:
  - Baixo risco
  - Médio risco
  - Alto risco

  Esse processo é subjetivo e demorado.
  
  *Problema a resolver*:

  Construa um workflow que:

  - Dispare ao adicionar nova linha.
  - Utilize o nó Basic LLM Chain (Gemini).
  - Crie um prompt que classifique o relato em:
    - Baixo, Médio ou Alto risco.
  - Atualize a planilha com:
    - Classificação
    - Justificativa resumida gerada pelo modelo.
]

#pagebreak(weak: true)