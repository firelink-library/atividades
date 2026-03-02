#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Correção e limpeza

#set-problem-counter(3)
#problem[
  Para o exercícios, considere o seguinte conjunto de dados:

  ```sql
  DROP TABLE IF EXISTS produtos;

  CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    tipo TEXT NOT NULL,
    preco REAL NOT NULL,
    quantidade INTEGER NOT NULL
  );

  INSERT INTO produtos (nome, tipo, preco, quantidade) VALUES
  ('Notebook X', 'Notebook', 3500.00, 5),
  ('Mouse Y', 'Periférico', 120.00, 30),
  ('Teclado Z', 'Periférico', 250.00, 12),
  ('Monitor 24', 'Monitor', 900.00, 7),
  ('HD 1TB', 'Armazenamento', 380.00, 10),
  ('SSD 480GB', 'Armazenamento', 300.00, 15);
  ```

  Contexto: Depois do cadastro, você descobriu erros e precisa corrigir o estoque.

  Tarefas:
    - Atualize o preço do Notebook X para 3299.00.
    - Aumente a quantidade do Mouse Y em +10 (dica: quantidade = quantidade + 10).
    - Delete o produto Teclado Z.
    - Faça um SELECT final para validar o estado da tabela.
  
]

#pagebreak(weak: true)