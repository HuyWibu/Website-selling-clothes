/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.admin;

import dal.DAO;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
import model.ProductDTO;
import model.ProductDetail;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Admin
 */
@WebServlet(name = "AddProductServlet", urlPatterns = {"/add-product"})
public class AddProductServlet extends HttpServlet {

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
            out.println("<title>Servlet AddProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddProductServlet at " + request.getContextPath() + "</h1>");
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
        String pid_raw = request.getParameter("pid");

        if (pid_raw == null) {
            request.setAttribute("action", "add");
        } else {
            int pid = Integer.parseInt(pid_raw);
            DAO dao = new DAO();
            ProductDTO pdto = new ProductDTO();
            Product x = dao.getProductByPid(pid);
            ProductDetail pd = dao.getProductDetailByPid(pid);
            pdto.setPid(x.getPid());
            pdto.setImage(x.getImage());
            pdto.setTitle(x.getTitle());
            pdto.setPrice(x.getPrice());
            pdto.setDiscount(x.getDiscount());
            pdto.setCid(x.getCategory().getCid());
            pdto.setQuantity(x.getQuantity());
            pdto.setMaterial(pd.getMaterial());
            pdto.setDesign(pd.getDesign());
            pdto.setBrand(pd.getBrand());
            pdto.setFit(pd.getFit());

            request.setAttribute("p", pdto);
            request.setAttribute("action", "edit");
        }

        request.getRequestDispatcher("AddProductAdmin.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        DAO dao = new DAO();

        String pid_raw = request.getParameter("pid");
        String image = request.getParameter("image");
        String title = request.getParameter("title");
        String price_raw = request.getParameter("price");
        String discount_raw = request.getParameter("discount");
        String cid_raw = request.getParameter("cid");
        String quantity_raw = request.getParameter("quantity");
        String brand = request.getParameter("brand");
        String material = request.getParameter("material");
        String design = request.getParameter("design");
        String fit = request.getParameter("fit");

        String action = request.getParameter("action");
        int pid = 0, cid = 0, quantity = 0;
        double price = 0, discount = 0;
        
        
        
        try {
            pid = Integer.parseInt(pid_raw);
            cid = Integer.parseInt(cid_raw);
            quantity = Integer.parseInt(quantity_raw);

            price = Double.parseDouble(price_raw);
            discount = Double.parseDouble(discount_raw);
        } catch (Exception e) {
            System.out.println(e);
        }

        ProductDTO p = new ProductDTO(pid, image, title, price, discount,
                cid, quantity, material, design, brand, fit);
        System.out.println(p);

        String filename = null;
        try {
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

            // Configure a repository (to ensure a secure temp location is used)
            ServletContext servletContext = this.getServletConfig().getServletContext();
            File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
            factory.setRepository(repository);

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);
            // Parse the request
            List<FileItem> items = upload.parseRequest(request);

            // Process the uploaded items
            Iterator<FileItem> iter = items.iterator();
            HashMap<String, String> fields = new HashMap<>();
            
            while (iter.hasNext()) {
                FileItem item = iter.next();
                
                if (item.isFormField()) {
                    fields.put(item.getFieldName(), item.getString());
                    String name = item.getFieldName();
                    String value = item.getString();
                    System.out.println("name: " + name);
                    System.out.println("value: " + value);
                } 
                else {
                    filename = item.getName();
                    System.out.println("filename: " + filename);
                    if(filename == null || filename.equals("")){
                        break;
                    }
                    else{
                        Path path = Paths.get(filename);
                        String storePath = servletContext.getRealPath("/image");
                        File uploadFile = new File(storePath + "/" + path.getFileName());
                        item.write(uploadFile);
                        System.out.println(storePath + "/" + path.getFileName());
                    }
                    
                }
            }
            
            
        } catch (FileUploadException ex) {
            System.out.println(ex); 
        } catch (Exception ex) {
            System.out.println(ex);
        }
        
        image = "./image/" + image + ".webp";
        p.setImage(image);
        
        if (action.equals("add")) {
//            System.out.println(p);
            dao.insertProduct(p);
        } else {
            dao.updateProduct(p);
        }

        response.sendRedirect("product-admin");

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
