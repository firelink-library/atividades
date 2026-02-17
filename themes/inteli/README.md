# inteli Handout Template

A Typst template for creating academic problem sets and handouts for inteli.

## Features

- **Cover Page** - Optional cover with inteli logo (top-right) and centered title (NO date)
- **Problem Import System** - Import problems from separate files in `problems/` directory
- **Auto-numbering** - Automatic problem and part numbering
- **Multiple Problem Types**:
  - Numbered problems
  - Problem parts (a, b, c)
  - Multiple choice questions
  - Code exercises with syntax highlighting
- **Styled Boxes** - Hints, notes, and warnings with inteli brand colors
- **Professional Layout** - Clean academic formatting with headers and footers
- **NO Answer Spaces** - Clean problem statements without answer areas

## Installation

Copy the `inteli` folder to your Typst project or install it as a local package.

### Logo Setup

Copy the `inteli-logo.png` file to your project directory and reference it in the template:

```typst
#show: inteli-handout.with(
  logo: "inteli-logo.png",  // Path relative to your .typ file
  ...
)
```

## Quick Start

### Project Structure

```
my-problem-set/
├── main.typ                 # Main document
├── inteli-logo.png          # Logo file
└── problems/                # Problem files directory
    ├── problem-01.typ
    ├── problem-02.typ
    └── problem-03.typ
```

### Main Document (main.typ)

```typst
#import "@local/inteli": *

#show: inteli-handout.with(
  title: "Lista de Exercícios 1",
  course: "Pensamento Computacional",
  course-code: "CC2025",
  professor: "Prof. Dr. Exemplo",
  problem-set-number: "1"
)

// Include problems from files (auto-numbered by import order)
#include "problems/problem-01.typ"
#include "problems/problem-02.typ"
#include "problems/problem-03.typ"
```

### Problem File (problems/problem-01.typ)

Problem files contain the problem content directly:

```typst
// This content will be auto-numbered when imported
#problem(title: "Algoritmos Básicos")[
  Escreva um algoritmo que receba dois números inteiros e retorne a soma.
  
  #part[Descreva o algoritmo em pseudocódigo.]
  #part[Implemente em Python.]
]
```

## Template Options

### Main Function: `inteli-handout`

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `title` | string | none | Document title |
| `course` | string | none | Course name |
| `course-code` | string | none | Course code (e.g., "CC2025") |
| `professor` | string | none | Professor name |
| `problem-set-number` | string | none | Problem set number |
| `logo` | string | none | Path to logo image (relative to document or absolute) |
| `show-cover` | bool | true | Show/hide cover page |
| `cover-content` | content | none | Additional content for cover page |

**NOTE:** No `date` parameter - dates are not displayed on cover pages.

### Including Problem Files

```typst
#include "problems/problem-01.typ"
```

Includes a problem file. Problems are auto-numbered based on the order they appear in the document.

## Problem Types

### Basic Problem

```typst
#problem(title: "Título da Questão")[
  Enunciado da questão aqui.
]
```

### Problem with Points

```typst
#problem(title: "Questão Difícil", points: "10")[
  Enunciado...
]
```

### Problem Parts

```typst
#problem[
  Questão com múltiplos itens.
  
  #part[Primeiro item.]
  #part[Segundo item.]
  #part[Terceiro item.]
]
```

### Multiple Choice

```typst
#problem[
  #multiple-choice(
    [Qual é a capital do Brasil?],
    options: (
      [São Paulo],
      [Rio de Janeiro],
      [Brasília],
      [Salvador]
    )
  )
]
```

### Code Exercise

```typst
#code-exercise(
  [Escreva uma função que calcule a média de dois números.],
  language: "python"
)
```

**NOTE:** No starter code is provided - students write their own solutions.

## Styled Boxes

### Hint

```typst
#hint[
  Esta é uma dica para ajudar na resolução.
]
```

### Note

```typst
#note[
  Esta é uma nota importante.
]
```

### Warning

```typst
#warning[
  Atenção: leia o enunciado com cuidado!
]
```

## Cover Page Options

### With Cover Page (Default)

```typst
#show: inteli-handout.with(
  title: "Lista de Exercícios 1",
  course: "Pensamento Computacional",
  professor: "Prof. Dr. Exemplo",
  show-cover: true
)
```

### Without Cover Page

```typst
#show: inteli-handout.with(
  title: "Lista de Exercícios",
  course: "Pensamento Computacional",
  show-cover: false  // Skip cover page
)
```

### Custom Cover Content

```typst
#show: inteli-handout.with(
  title: "Lista de Exercícios 1",
  course: "Pensamento Computacional",
  show-cover: true,
  cover-content: [
    #v(1cm)
    #align(center)[
      *Instruções:* Resolva todos os exercícios \
      até a próxima aula.
    ]
  ]
)
```

## File Structure

```
inteli/
├── lib.typ              # Main template file
├── colors.typ           # Brand colors
├── inteli-logo.png      # Logo asset
├── typst.toml          # Package manifest
├── components/
│   ├── cover.typ       # Cover page (NO date)
│   ├── header.typ      # Page header
│   ├── problems.typ    # Problem types (NO answer spaces)
│   └── boxes.typ       # Styled boxes
└── README.md           # This file
```

## Brand Colors

The template uses the following inteli brand colors:

- **Primary**: Dark blue (`#1e3a5f`)
- **Secondary**: Teal (`#4a90a4`)
- **Accent**: Orange (`#f4a261`)
- **Dark**: Dark gray for text (`#2d3748`)
- **Light**: Light gray for backgrounds (`#f7fafc`)

## License

MIT License
