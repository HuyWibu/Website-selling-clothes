/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.normal;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SignUpServlet", urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignUpServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignUpServlet at " + request.getContextPath() + "</h1>");
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
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String confirm = request.getParameter("confirm");
        String agree = request.getParameter("agree");
        DAO dao = new DAO();
        
        int ktra = 0;
        
        Account a = dao.accountExist(user);
        if (a != null) {
            ktra = 1;
            String acc_exist = "Tài khoản đã tồn tại";
            request.setAttribute("exist", acc_exist);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        boolean check = dao.isEmail(email);
        if (check) {
            ktra = 1;
            String email_exist = "Email đã tồn tại";
            request.setAttribute("exist", email_exist);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        if(!pass.equals(confirm)){
            ktra = 1;
            String confirm_fail = "Xác nhận mật khẩu thất bại";
            request.setAttribute("exist", confirm_fail);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        if(agree == null){
            ktra = 1;
            String disagree = "Hãy đồng ý với các điều khoản của dịch vụ";
            request.setAttribute("exist", disagree);
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }
        if(ktra == 0){
            dao.insert(user, pass, email);
        }
        
        response.sendRedirect("home.jsp");
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
        doGet(request, response);
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
