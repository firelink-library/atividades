#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Python com banco de dados 2

#set-problem-counter(6)
#problem[
  Para o exercícios, considere o seguinte conjunto de dados:

  ```sql
  DROP TABLE IF EXISTS livros;

  CREATE TABLE livros (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      titulo TEXT NOT NULL,
      autor TEXT NOT NULL,
      ano INTEGER NOT NULL,
      disponivel INTEGER NOT NULL -- 1 = disponível, 0 = emprestado
  );

  INSERT INTO livros (titulo, autor, ano, disponivel) VALUES
  ('Dom Casmurro', 'Machado de Assis', 1899, 1),
  ('1984', 'George Orwell', 1949, 1),
  ('O Hobbit', 'J.R.R. Tolkien', 1937, 0),
  ('Clean Code', 'Robert C. Martin', 2008, 1);
  ```

  Crie funções em Python que:
  - Insiram um novo livro
  - Atualizem o status de disponibilidade de um livro
  - Mostrem o resultado após a modificação
  
]

#pagebreak(weak: true)