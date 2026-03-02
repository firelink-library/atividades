#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Cantina Tech

#set-problem-counter(7)
#problem[
  Para o exercícios, considere o seguinte conjunto de dados (`cantina.db`):

  ```sql
  DROP TABLE IF EXISTS itens_venda;
  DROP TABLE IF EXISTS vendas;
  DROP TABLE IF EXISTS produtos;

  CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    preco REAL NOT NULL,
    estoque INTEGER NOT NULL,
    ativo INTEGER NOT NULL DEFAULT 1
  );

  CREATE TABLE vendas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    data_hora TEXT NOT NULL DEFAULT (datetime('now')),
    total REAL NOT NULL DEFAULT 0
  );

  CREATE TABLE itens_venda (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    venda_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unit REAL NOT NULL,
    subtotal REAL NOT NULL,
    FOREIGN KEY (venda_id) REFERENCES vendas(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
  );

  -- Produtos (12 itens)
  INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
  ('Coxinha', 'Salgados', 7.50, 25),
  ('Pão de Queijo', 'Salgados', 5.00, 30),
  ('Pastel', 'Salgados', 8.00, 18),
  ('Refrigerante Lata', 'Bebidas', 6.00, 40),
  ('Água', 'Bebidas', 4.00, 50),
  ('Suco Natural', 'Bebidas', 9.00, 15),
  ('Café', 'Bebidas', 4.50, 60),
  ('Brigadeiro', 'Doces', 3.50, 35),
  ('Brownie', 'Doces', 8.50, 12),
  ('Barra de Cereal', 'Lanches', 4.00, 20),
  ('Sanduíche Natural', 'Lanches', 12.00, 10),
  ('Salgadinho', 'Lanches', 6.50, 28);

  -- Vendas e itens (dados para relatório)
  INSERT INTO vendas (data_hora, total) VALUES
  (datetime('now', '-2 hours'), 0),
  (datetime('now', '-90 minutes'), 0),
  (datetime('now', '-45 minutes'), 0);

  -- Venda 1
  INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unit, subtotal) VALUES
  (1, 1, 2, 7.50, 15.00),
  (1, 4, 2, 6.00, 12.00),
  (1, 8, 3, 3.50, 10.50);

  -- Venda 2
  INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unit, subtotal) VALUES
  (2, 2, 4, 5.00, 20.00),
  (2, 7, 2, 4.50, 9.00),
  (2, 10, 1, 4.00, 4.00);

  -- Venda 3
  INSERT INTO itens_venda (venda_id, produto_id, quantidade, preco_unit, subtotal) VALUES
  (3, 11, 1, 12.00, 12.00),
  (3, 6, 1, 9.00, 9.00),
  (3, 9, 2, 8.50, 17.00);

  -- Atualiza total das vendas com base nos itens
  UPDATE vendas
  SET total = (
    SELECT COALESCE(SUM(subtotal), 0)
    FROM itens_venda
    WHERE itens_venda.venda_id = vendas.id
  );
  ```

  A CantinaTech é uma cantina universitária pequena, com poucos funcionários, que hoje controla as vendas “no caderno”. Você foi contratado para criar um sistema em Python (terminal) para:

  - cadastrar os produtos vendidos,
  - registrar vendas (itens e quantidade),
  - permitir correções (CRUD),
  - gerar relatórios textuais para o dono tomar decisão (com agregações).

Restrições do projeto:
  - Interface 100% texto (menu no terminal).
  - Banco de dados SQLite usando sqlite3.
  - Operações devem usar placeholders ?
  - Criar uma venda com data/hora automática
  - Adicionar itens: produto + quantidade
  - Ao registrar venda:
    - baixar estoque do produto
    - impedir venda com estoque insuficiente

Relatórios textuais obrigatórios (com agregação)
  - Faturamento total do dia (SUM)
  - Top 5 produtos mais vendidos por quantidade (SUM + GROUP BY + ORDER BY)
  - Faturamento por categoria (SUM + GROUP BY)
  - Produtos com estoque baixo (ex.: estoque <= 5)
  - Ticket médio do dia (AVG do total das vendas)
  
]

#pagebreak(weak: true)