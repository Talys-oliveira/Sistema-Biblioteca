public class Main {
    public static void main(String[] args) {
        // Testa a conexão com o PostgreSQL
        ConexaoBD.conectar();

        Biblioteca biblioteca = new Biblioteca(5);

        ItemBiblioteca livro1 = new Livro(1, "Clean Code");
        ItemBiblioteca livro2 = new Livro(2, "Arquitetura Limpa");
        ItemBiblioteca revista1 = new Revista(3, "Superinteressante");
        ItemBiblioteca revista2 = new Revista(4, "National Geographic");
        ItemBiblioteca dvd1 = new DVD(5, "Interestelar");

        biblioteca.adicionarItem(livro1);
        biblioteca.adicionarItem(livro2);
        biblioteca.adicionarItem(revista1);
        biblioteca.adicionarItem(revista2);
        biblioteca.adicionarItem(dvd1);

        biblioteca.listarAcervo();

        Usuario aluno = new Aluno("Carlos");

        System.out.println("--- TESTANDO EMPRÉSTIMOS ---");
        biblioteca.emprestar(aluno, livro1);
        biblioteca.emprestar(aluno, livro2);
        biblioteca.emprestar(aluno, revista1);

        biblioteca.emprestar(aluno, revista2);

        biblioteca.listarAcervo();
    }
}