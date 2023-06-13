/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.normal;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;
import model.ProductDetail;

/**
 *
 * @author Admin
 */
@WebServlet(name = "BuyServlet", urlPatterns = {"/buy"})
public class BuyServlet extends HttpServlet {

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
            out.println("<title>Servlet BuyServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BuyServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession(true);
        Cart cart = null;
        DAO dao = new DAO();
        Object o = session.getAttribute("cart");

        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        
        String size = request.getParameter("size");
        System.out.println(size);
        String pid_raw = request.getParameter("pid");
        String quantity_raw = request.getParameter("quantity");

        int pid, quantity;
        try {
            pid = Integer.parseInt(pid_raw);
            quantity = Integer.parseInt(quantity_raw);
            Product p = dao.getProductByPid(pid);
            double salePrice = p.getPrice() - p.getDiscount();
            Item item = new Item(p, quantity, salePrice, size, "", "", "");
            cart.addItem(item);

            // gui lai du lieu len trang detail
            ProductDetail pd = dao.getProductDetailByPid(pid);
            List<Product> list = dao.getProductsByCid(p.getCategory().getCid());

            request.setAttribute("category", dao.getCategorieByCid(p.getCategory().getCid()));
            request.setAttribute("product", p);
            request.setAttribute("detail", pd);
            request.setAttribute("productRelated", list);
            request.setAttribute("listCategory", dao.getCategories());

        } catch (Exception e) {
        }

        List<Item> list = cart.getItems();
//        for(Item i : list){
//            System.out.println(i);
//        }
        session.setAttribute("cart", cart);
        
        
        request.getRequestDispatcher("ProductDetails.jsp").forward(request, response);
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
