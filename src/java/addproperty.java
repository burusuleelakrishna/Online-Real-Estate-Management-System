/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author h
 */
public class addproperty extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addproperty</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addproperty at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        HttpSession session1=request.getSession();       
        String landmark = request.getParameter("landmark");
        String location = request.getParameter("location");
        String amenities = request.getParameter("Amenities");
        String nearby = request.getParameter("nearby");
        String vendorname = request.getParameter("name");
        String vendorcontact = request.getParameter("contact");
        String vendoraddress = request.getParameter("address");
             System.out.println(landmark);
             System.out.println(location);
             System.out.println(amenities);
             System.out.println(nearby);
             System.out.println(vendorname);
             System.out.println(vendorcontact);
             System.out.println(vendoraddress);
          try{
              Class.forName("com.mysql.jdbc.Driver");
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/real","root","password");
              String sql = "INSERT INTO property (landmark,location,amenities,nearby,vendorname,vendorcontact,vendoraddress) values (?,?,?,?,?,?,?)";
              PreparedStatement statement = con.prepareStatement(sql);
              statement.setString(1, landmark);
              statement.setString(2, location);
              statement.setString(3, amenities);
              statement.setString(4, nearby);
              statement.setString(5, vendorname);
              statement.setString(6, vendorcontact);
              statement.setString(7, vendoraddress);
              statement.executeUpdate();  
              response.sendRedirect("SellerHome.jsp");
         }
          catch(ClassNotFoundException | SQLException e){
              System.out.println(e);
          }
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
