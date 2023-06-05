/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;
import model.Item;

/**
 *
 * @author Admin
 */
@WebServlet(name="CheckoutSerlvet", urlPatterns={"/checkout"})
public class CheckoutSerlvet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
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
            out.println("<title>Servlet CheckoutSerlvet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckoutSerlvet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        DAO dao = new DAO();
        
        Cart cart = null;
        
        Object o = session.getAttribute("cart");
        
        if(o != null){
            cart = (Cart) o;
        }
        else{
            cart = new Cart();
        }
        
        String name = request.getParameter("name").trim();
        String sonha = request.getParameter("sonha").trim();
        String quan = request.getParameter("quan").trim();
        String thanhpho = request.getParameter("thanhpho").trim();
        String sdt = request.getParameter("sdt").trim();
        String address = sonha + " - " + quan + " - " + thanhpho;
        
        for(Item i : cart.getItems()){
            System.out.println(name);
            i.setName(name);
            System.out.println(i.getName());
            i.setAddress(address);
            i.setPhoneNumber(sdt);
        }
        
        Account a = null;
        Object acc = session.getAttribute("acc");
        
        if(acc != null){
            a = (Account) acc;
            // chua co ten thi add ten luon cho tk
//            a.setName(name);
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.addOrder(a, cart);
            session.removeAttribute("cart");
            request.setAttribute("listCategory", dao.getCategories());
            request.getRequestDispatcher("cart").forward(request, response);
        }
        else{
            response.sendRedirect("login.jsp");
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
