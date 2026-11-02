public class DVD extends ItemBiblioteca {
    public DVD(int codigo, String titulo) {
        super(codigo, titulo);
    }

    @Override
    public int getPrazo() {
        return 3; // 3 dias de prazo para DVD
    }

    @Override
    public double getMultaDiaria() {
        return 2.00; // R$ 2,00 por dia de multa
    }
}
