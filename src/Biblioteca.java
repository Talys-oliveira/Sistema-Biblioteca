public class Biblioteca {
    private ItemBiblioteca[] acervo;
    private int totalItens;

    public Biblioteca(int capacidade) {
        this.acervo = new ItemBiblioteca[capacidade];
        this.totalItens = 0;
    }

    public boolean adicionarItem(ItemBiblioteca item) {
        if (totalItens < acervo.length) {
            acervo[totalItens] = item;
            totalItens++;
            return true;
        }
        return false;
    }

    public boolean emprestar(Usuario usuario, ItemBiblioteca item) {
        if (item.isDisponivel() && usuario.getQuantidadeEmprestada() < usuario.getLimiteItens()) {
            item.emprestarItem();
            usuario.incrementarEmprestimo();
            System.out.println("Empréstimo realizado com sucesso para " + usuario.getNome() + "!");
            return true;
        } else {
            System.out.println("Empréstimo recusado para " + usuario.getNome() + " (Limite atingido ou item indisponível).");
            return false;
        }
    }

    public boolean devolver(Usuario usuario, ItemBiblioteca item) {
        if (!item.isDisponivel()) {
            item.devolverItem();
            usuario.decrementarEmprestimo();
            System.out.println("Devolução realizada com sucesso!");
            return true;
        }
        return false;
    }

    public void listarAcervo() {
        System.out.println("\n--- ACERVO DA BIBLIOTECA ---");
        for (int i = 0; i < totalItens; i++) {
            ItemBiblioteca item = acervo[i];
            String status = item.isDisponivel() ? "Disponível" : "Emprestado";

            System.out.println("- [" + item.getCodigo() + "] " + item.getTitulo() +
                    " | Status: " + status +
                    " | Prazo: " + item.getPrazo() + " dias" +
                    " | Multa/dia: R$ " + item.getMultaDiaria());
        }
        System.out.println("---------------------------\n");
    }
}