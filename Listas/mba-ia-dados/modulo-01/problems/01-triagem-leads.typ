#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Sistema de triagem de leads

#set-problem-counter(1)
#problem[
  Uma empresa recebe diariamente dezenas de novos leads por meio de um formulário. Esses dados são enviados automaticamente para uma planilha no Google Sheets contendo: Nome, Email, Empresa, Cargo e Interesse.

  O time comercial percebeu que parte desses leads não possui perfil adequado (ex.: estudantes curiosos, fornecedores, etc.). Atualmente essa triagem é manual e consome tempo da equipe.

  A diretoria deseja automatizar esse processo para separar leads qualificados e não qualificados.
  
  *Problema a resolver*:

  Construa um workflow no N8N que:
  - Utilize um Google Sheets Trigger ao adicionar nova linha.
  - Utilize um nó IF para separar:
    - Leads cujo cargo contenha “Diretor”, “Gerente” ou “Head”.
    - Para leads qualificados:
  - Envie um e-mail para o time comercial.
  - Atualize o status da planilha para:
    - “Qualificado”
    - “Não Qualificado”
]

#pagebreak(weak: true)