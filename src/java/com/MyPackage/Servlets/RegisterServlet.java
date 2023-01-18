/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.MyPackage.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import com.MyPackage.DBConnection.ConnectionClass;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sairam
 */
public class RegisterServlet extends HttpServlet {

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
        
        PrintWriter out = response.getWriter();
        
         String name = request.getParameter("name");
         String uname = request.getParameter("username");
         String email = request.getParameter("email");
         String dob = request.getParameter("dob");
         String password = request.getParameter("password");
         String confPassword = request.getParameter("conf_password");
        
         if(password.equals(confPassword)){
            try{Connection con = ConnectionClass.getConnection();

            String query="insert into user(name,uname,email,password,dob) values(?,?,?,?,?)";
             PreparedStatement ps = con.prepareStatement(query);

                ps.setString(1, name);
                ps.setString(2, uname);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.setString(5, dob);


                ps.executeUpdate();
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert('User Registered Successfully');");
                out.println("location='RegisterPage.jsp';");
                out.println("</script>");
                
                response.sendRedirect(request.getContextPath() + "/LoginPage.jsp");

            }catch(Exception e){
                 response.sendRedirect(request.getContextPath() + "/RegisterPage.jsp");
                e.printStackTrace();
            }
         }
         else{
             System.out.print("** Password and Confirm Password dont match **");
             response.sendRedirect(request.getContextPath() + "/RegisterPage.jsp");
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
