# Sistema de Biblioteca - POO (Java)

Miniprojeto desenvolvido para praticar conceitos avançados de Orientação a Objetos em Java[cite: 1].

##  Funcionalidades e Regras Implementadas
- **Classes Abstratas e Herança:** `ItemBiblioteca` (superclasse para Livro, Revista, DVD) e `Usuario` (superclasse para Aluno, Professor)[cite: 1, 3].
- **Polimorfismo:** Métodos de cálculo de prazo e multas personalizados por tipo de item, além de listagem do acervo em um único laço sem checagem explícita de tipos (`if`)[cite: 1, 3].
- **Encapsulamento Estrito:** A disponibilidade dos itens é controlada internamente pelas ações de empréstimo e devolução, sem exposição de modificadores públicos indevidos[cite: 1].
- **Controle de Limites:** Validação automática baseada no perfil do usuário (ex: Aluno possui limite de 3 itens, Professor de 5)[cite: 1].
- **Arrays de Tamanho Fixo:** Gerenciamento do acervo utilizando estruturas de tamanho fixo em memória[cite: 1].

##  Tecnologias Utilizadas
- **Java** (Programação Orientada a Objetos)
- **IntelliJ IDEA** (Ambiente de Desenvolvimento)
- **Git / GitHub** (Controle de Versão)

## Como Executar
1. Clone este repositório.
2. Abra o projeto no **IntelliJ IDEA**.
3. Navegue até a classe `Main.java` dentro da pasta `src`.
4. Clique no botão de executar (**Play**) ao lado do método `main` para rodar o cenário de teste.