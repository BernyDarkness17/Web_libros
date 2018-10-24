package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Data {
    
    private Conexion con;
    private ResultSet rs;
    private String query;

    public Data() throws SQLException, ClassNotFoundException {

        con = new Conexion(
                "localhost",
                "bd_libro",//nombre BD
                "root", //tomcat
                ""//Password
        );

    }
    public void agregarLibro(Libro l) throws SQLException {

        con.ejecutar("INSERT INTO libro VALUES(null, "
                + "'" + l.getNombrelibro()+ "', "
                + "'" + l.getNombreautora()+ "', "
                + "'" + l.getSexoautor()+ "',"
                + "'" + l.getCategoria_FK() + "',"
                + "'" + l.getValorlibro() + "')");

    }
    
    
    public List<Categoria> getCategorias() throws SQLException {
        query = "select * from categoria";
        List<Categoria> categoria = new ArrayList<>();
        Categoria c;

        rs = con.ejecutarSelect(query);
        while (rs.next()) {
            c = new Categoria();

            c.setId(rs.getInt(1));
            c.setNombre(rs.getString(2));
            
            categoria.add(c);
        }
        con.close();
        return categoria;
    }
    
    public List<Libro> getLibro() throws SQLException {
        query = "select * from libro";
        List<Libro> libro = new ArrayList<>();
        Libro l;

        rs = con.ejecutarSelect(query);
        while (rs.next()) {
            l = new Libro();

            l.setId(rs.getInt(1));
            l.setNombrelibro(rs.getString(2));
            l.setNombreautora(rs.getString(3));
            l.setSexoautor(rs.getInt(4));
            l.setCategoria_FK(rs.getInt(5));
            l.setValorlibro(rs.getInt(6));

            libro.add(l);
        }
        con.close();
        return libro;
    }
    
    
    
}
