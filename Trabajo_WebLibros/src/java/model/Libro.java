package model;

public class Libro {
    private int id; 
    private String nombrelibro;
    private String nombreautora;
    private int sexoautor;
    private int categoria_FK;
    private int valorlibro;

    public Libro() {
    }

    public Libro(int id, String nombrelibro, String nombreautora, int sexoautor, int categoria_FK, int valorlibro) {
        this.id = id;
        this.nombrelibro = nombrelibro;
        this.nombreautora = nombreautora;
        this.sexoautor = sexoautor;
        this.categoria_FK = categoria_FK;
        this.valorlibro = valorlibro;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrelibro() {
        return nombrelibro;
    }

    public void setNombrelibro(String nombrelibro) {
        this.nombrelibro = nombrelibro;
    }

    public String getNombreautora() {
        return nombreautora;
    }

    public void setNombreautora(String nombreautora) {
        this.nombreautora = nombreautora;
    }

    public int getSexoautor() {
        return sexoautor;
    }

    public void setSexoautor(int sexoautor) {
        this.sexoautor = sexoautor;
    }

    public int getCategoria_FK() {
        return categoria_FK;
    }

    public void setCategoria_FK(int categoria_FK) {
        this.categoria_FK = categoria_FK;
    }

    public int getValorlibro() {
        return valorlibro;
    }

    public void setValorlibro(int valorlibro) {
        this.valorlibro = valorlibro;
    }
   
}
