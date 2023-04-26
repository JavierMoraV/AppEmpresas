/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author User
 */
public class NewServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombre = request.getParameter("nombre");
            String rut = request.getParameter("rut");
            String dv = request.getParameter("dv");
            String ap = request.getParameter("ap");
            String am = request.getParameter("am");
            String date = request.getParameter("date");
            String fono = request.getParameter("fono");
            String correo = request.getParameter("correo");
            String sexo = request.getParameter("sexo");
            String direccion = request.getParameter("direccion");
            String nacionalidad = request.getParameter("nacionalidad");
            String password = request.getParameter("password");
            if(nombre.length()>0){
                out.print("nombre: " + nombre + "<br>");
            }else{
                out.print("nombre no ingresado <br>");
            }
            
            if(rut.length()>0){
                out.print("rut: "+rut + "<br>");
            }else{
                out.print("rut no ingresado <br>");
            }
            
            if(dv.length()>0){
                out.print("digito verificador: "+ dv + "<br>");
            }else{
                out.print("digito verificador no ingresado <br>");
            }
            
            if(ap.length()>0){
                out.print("apellido paterno: "+ap + "<br>");
            }else{
                out.print("apellido paterno no ingresado <br>");
            }
            
            if(am.length()>0){
                out.print("apellido materno: "+am + "<br>");           
            }else{
                out.print("apellido materno no ingresado <br>");
            }
            
            if(fono.length()>0){
                out.print("Telefono: "+fono + "<br>");
            }else{
                out.print("Telefono materno no ingresado <br>");
            }
            
            if(correo.length()>0){
                out.print("correo: "+correo + "<br>");
            }else{
                out.print("correo no ingresado <br>");
            }
            
            if(sexo.length()>0){
                out.print("sexo: "+sexo + "<br>");
            }else{
                out.print("sexo no ingresado <br>");
            }
            
            if(direccion.length()>0){
                out.print("direccion: "+sexo + "<br>");
            }else{
                out.print("direccion no ingresada <br>");
            }
            
            if(nacionalidad.length()>0){
                out.print("nacionalidad: "+nacionalidad + "<br>");
            }else{
                out.print("nacionalidad no ingresada <br>");
            }
            
            if(password.length()>0){
                out.print("contraseña: "+password + "<br>");
            }else{
                out.print("contraseña no ingresada <br>");
            }
            
  
            //out.print("nombre: "+nombre + "<br>");
            //out.print("rut: "+rut + "<br>");
            //out.print("digito verificador: "+ dv + "<br>");
            //out.print("apellido paterno: "+ap + "<br>");
            //out.print("apellido materno: "+am + "<br>");           
            //out.print("fono: "+fono + "<br>");
            //out.print("correo :"+correo + "<br>");
            //out.print("sexo: "+sexo + "<br>");
            //out.print("direccion: "+direccion + "<br>");
            //out.print("nacionalidad: "+nacionalidad + "<br>");
            //out.print("contraseña: "+password + "<br>");
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
