#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Entrada de estoque

#set-problem-counter(2)
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

  Contexto: Chegou um novo lote e você precisa registrar itens novos e repor quantidades.
  Tarefas (faça só com INSERT):
  - Insira 2 novos produtos (você escolhe nome/tipo/preço/quantidade).
  - Insira 1 produto com preço “quebrado” (ex.: 79.90) para praticar REAL.
  - Faça um SELECT para conferir se os registros entraram.
  
]

#pagebreak(weak: true)