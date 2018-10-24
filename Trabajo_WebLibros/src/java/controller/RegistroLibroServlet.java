package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Data;
import model.Libro;

@WebServlet(name = "RegistroLibroServlet", urlPatterns = {"/registroLibro.do"})
public class RegistroLibroServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                Data d = new Data();
                Libro l = new Libro();
                
                l.setNombrelibro(request.getParameter("txtNombreLibro"));
                System.out.println("gigi");

                l.setNombreautora(request.getParameter("txtNombreAutor"));
                l.setSexoautor(Integer.parseInt(request.getParameter("sexo")));
                l.setCategoria_FK(Integer.parseInt(request.getParameter("cboCategoria")));
                l.setValorlibro(Integer.parseInt(request.getParameter("valorLibro")));
                
                d.agregarLibro(l);
                
                response.sendRedirect("index.jsp");//jsp
                System.out.println("Se dflklfk");
                

            } catch (SQLException ex) {
                Logger.getLogger(RegistroLibroServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(RegistroLibroServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
