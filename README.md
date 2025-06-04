
# Lab 12 – Circuitos Digitais com VHDL

Este projeto contém a implementação e simulação de quatro circuitos digitais utilizando a linguagem VHDL, com testes realizados no ModelSim e integração com a placa DE2-115 da Altera/Intel.

## Atividades

### Atividade 1 – Flip-Flop D com MUX 2:1

Implementação de um flip-flop do tipo D sensível à borda de subida do clock, com entrada D conectada a um multiplexador 2:1. O MUX foi implementado separadamente e utilizado como componente por meio de `package`.

**Mapeamento na placa:**

* `SW(0)` → D0
* `SW(1)` → D1
* `SW(2)` → SEL
* `KEY(0)` → Clock
* `LEDR(0)` → Q
* `LEDR(1)` → D1
* `LEDR(2)` → SEL

---

### Atividade 2 – Registrador de Deslocamento de 4 Bits

Projeto de um registrador de deslocamento de 4 bits utilizando código hierárquico, onde o componente `muxdff` da Atividade 1 é reutilizado. O registrador pode carregar um valor ou realizar deslocamento condicional.

**Mapeamento na placa:**

* `SW(3..0)` → R (valor a ser carregado)
* `SW(5)` → W (entrada serial)
* `KEY(0)` → Clock
* `KEY(1)` → L (carregar ou deslocar)
* `HEX(0)` → R
* `HEX(2)` → Q

---

### Atividade 3 – Contador Crescente de 4 Bits

Implementação de um contador crescente de 4 bits, com controle de habilitação e reset assíncrono.

**Mapeamento na placa:**

* `SW(0)` → E (habilita contagem)
* `SW(5)` → W
* `KEY(0)` → Clock
* `KEY(1)` → Resetn
* `HEX(0)` → Q

---

### Atividade 4 – Contador com Carga Paralela

Implementação de um contador crescente de 4 bits com opção de carga paralela e uso de variáveis do tipo `INTEGER`. O valor de carga é fornecido por meio dos switches.

**Mapeamento na placa:**

* `SW(3..0)` → R (valor a ser carregado)
* `SW(0)` → E (habilita contagem)
* `SW(5)` → W
* `KEY(0)` → Clock
* `KEY(1)` → Resetn
* `KEY(2)` → L (sinal de carga)
* `HEX(0)` → Q

---

## Simulações

Todas as atividades foram simuladas no ModelSim para verificar o funcionamento correto dos circuitos antes da implementação física na placa.

---

## Autor

Este laboratório foi desenvolvido como parte das atividades práticas da disciplina de Circuitos Digitais com VHDL.

---

Se quiser, posso adaptar esse README diretamente para Markdown e formatar com indentação e cabeçalhos prontos para colar no GitHub. Deseja isso?
