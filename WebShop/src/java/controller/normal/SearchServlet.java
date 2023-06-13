/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.normal;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

/**
 *
 * @author Admin
 */
@WebServlet(name = "SerchServlet", urlPatterns = {"/search"})
public class SearchServlet extends HttpServlet {

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
            out.println("<title>Servlet SerchServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SerchServlet at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        String search = request.getParameter("search");

        if (search == null || search.equals("")) {
            response.sendRedirect("Search.jsp");
        } else {
            //        System.out.println(search);
            DAO dao = new DAO();

            // tra ve ket qua list 
            List<Product> list = dao.getSearchResultList(search);
            System.out.println(list);
            int page; // de biet dang o trang nao
            int size = list.size();
            int numperpage = 8;
            int numpage = (size % numperpage == 0 ? size / numperpage : size / numperpage + 1); // so trang

            String xpage = request.getParameter("page");

            if (xpage == null) {
                page = 1;
            } else {
                page = Integer.parseInt(xpage);
            }

            int start, end;
            start = (page - 1) * numperpage;
            end = Math.min(page * numperpage, size);

            List<Product> listP = dao.getProductsByPage(list, start, end);
//        System.out.println(listP);

            request.setAttribute("txtSearch", search);
            request.setAttribute("data", listP);
            request.setAttribute("page", page);
            request.setAttribute("numpage", numpage);

            request.setAttribute("listCategory", dao.getCategories());
            request.getRequestDispatcher("Search.jsp").forward(request, response);
        }

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
