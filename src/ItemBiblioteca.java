public abstract class ItemBiblioteca {
    private int codigo;
    private String titulo;
    private boolean disponivel;

    public ItemBiblioteca(int codigo, String titulo) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.disponivel = true;
    }

    public int getCodigo() {
        return codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public boolean isDisponivel() {
        return disponivel;
    }

    protected void emprestarItem() {
        this.disponivel = false;
    }

    protected void devolverItem() {
        this.disponivel = true;
    }

    public abstract int getPrazo();
    public abstract double getMultaDiaria();
}
