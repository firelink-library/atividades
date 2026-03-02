#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Monitoramento de pendências

#set-problem-counter(2)
#problem[
  Uma área de operações mantém uma planilha de tarefas com os campos: Responsável, Descrição, Status, Data Limite.

  Muitas tarefas ficam com status “Pending” por longos períodos, causando atrasos e impactando indicadores estratégicos.

  A empresa deseja que, diariamente, o sistema envie lembretes automáticos apenas para tarefas pendentes que estão próximas da data limite.
  
  *Problema a resolver*:

  Construa um workflow que:

  - Utilize um Schedule Trigger (1x por dia).
  - Busque todas as linhas da planilha.
  - Use o nó IF para filtrar apenas tarefas com Status = “Pending”.
  - Use Loop Over Items para:
    - Enviar e-mail ao responsável.
    - Atualize o campo “Último Lembrete” com a data atual.
]

#pagebreak(weak: true)