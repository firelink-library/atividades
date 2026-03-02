#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Catalogo Rápido

#set-problem-counter(1)
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

  Contexto: Você acabou de receber o estoque inicial da loja e precisa montar uma listagem para o gestor. Tarefas (faça só com SELECT):
  - Liste todos os produtos.
  - Liste apenas nome e preco.
  - Liste produtos com preco > 500.
  - Liste os tipos existentes sem repetição (DISTINCT tipo).
  - Liste produtos cujo preço esteja entre 200 e 600 (BETWEEN).
  
]

#pagebreak(weak: true)