#import "../../../../themes/inteli/lib.typ": *

#let link-style(url, content) = {
  link(url)[#underline[#text(blue, content)]]
}

== Python com banco de dados 1

#set-problem-counter(5)
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

  Desenvolva um script em Python utilizando a biblioteca sqlite3 que execute as seguintes etapas:
  - Estabeleça conexão com o banco de dados biblioteca.db.
  - Execute uma consulta SQL para recuperar todos os registros da tabela livros.
  - Execute uma segunda consulta para recuperar apenas os livros disponíveis, ou seja, aqueles cujo campo disponivel seja igual a 1.
  - Exiba os resultados no console de forma organizada e legível (exemplo: utilizando dicionários ou formatação textual adequada).
  
]

#pagebreak(weak: true)