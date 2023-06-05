/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Product;
import model.ProductDTO;
import model.ProductDetail;

/**
 *
 * @author Admin
 */
public class DAO extends DBContext {

    public DAO() {
    }

    // Product
    public List<Product> getProducts() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDouble(4),
                        rs.getString(6),
                        rs.getString(8),
                        rs.getString(9),
                        getCategorieByCid(rs.getInt(5)),
                        rs.getInt(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Product getProductByPid(int pid) {
        String sql = "SELECT * FROM products WHERE pid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDouble(4),
                        rs.getString(6),
                        rs.getString(8),
                        rs.getString(9),
                        getCategorieByCid(rs.getInt(5)),
                        rs.getInt(10));
            }

        } catch (SQLException e) {
        }
        return null;
    }

    public ProductDetail getProductDetailByPid(int pid) {
        String sql = "SELECT * FROM detail where pid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new ProductDetail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Product> getProductsByPage(List<Product> listP, int start, int end) {
        List<Product> list = new ArrayList<>();
        for (int i = start; i < end; i++) {
            list.add(listP.get(i));
        }
        return list;
    }

    public List<Product> getProductsByCid(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products where cid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDouble(4),
                        rs.getString(6),
                        rs.getString(8),
                        rs.getString(9),
                        getCategorieByCid(rs.getInt(5)),
                        rs.getInt(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Category> getCategories() {
        List<Category> list = new ArrayList<>();
        String sql = "SELECT * FROM categories";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Category getCategorieByCid(int cid) {
        String sql = "SELECT * FROM categories where cid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Product> getSearchResultList(String search) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT * FROM products WHERE title like ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getDouble(4),
                        rs.getString(6),
                        rs.getString(8),
                        rs.getString(9),
                        getCategorieByCid(rs.getInt(5)),
                        rs.getInt(10)));
            }
        } catch (SQLException e) {
        }
        return list;
    }

    // Account
    public Account getAccount(String user, String pass) {
        String sql = "SELECT * FROM accounts "
                + "WHERE username = ?"
                + " and password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getString(10));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public List<Account> getAccounts() {
        List<Account> list = new ArrayList<>();
        String sql = "SELECT * FROM accounts";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(a);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Account accountExist(String user) {
        String sql = "SELECT * FROM accounts "
                + "WHERE username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDouble(8),
                        rs.getString(9),
                        rs.getString(10));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public boolean isEmail(String email) {
        DAO dao = new DAO();
        List<Account> list = dao.getAccounts();
        for (Account a : list) {
            if (a.getEmail().equals(email)) {
                return true;
            }
        }
        return false;
    }

    public void insert(String user, String pass, String email) {
        String sql = "INSERT INTO [dbo].[accounts]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[isSell]\n"
                + "           ,[isAdmin]\n"
                + "           ,[email])\n"
                + "     VALUES (?, ?, 0, 0,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, email);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void update(Account a) {
        String sql = "UPDATE [dbo].[accounts]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[isSell] = ?\n"
                + "      ,[isAdmin] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[name] = ?\n"
                + "      ,[amount] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[address] = ?\n"
                + " WHERE uid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, a.getUser());
            ps.setString(2, a.getPass());
            ps.setInt(3, a.getIsSell());
            ps.setInt(4, a.getIsAdmin());
            ps.setString(5, a.getEmail());
            ps.setString(6, a.getName());
            ps.setDouble(7, a.getAmount());
            ps.setString(8, a.getPhone());
            ps.setString(9, a.getAddress());
            ps.setInt(10, a.getUid());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // Category - Admin
    public void insertCategory(String name) {
        String sql = "INSERT INTO categories VALUES(?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void updateCategory(Category c) {
        String sql = "UPDATE categories\n"
                + "   SET [name] = ?\n"
                + " WHERE cid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, c.getName());
            ps.setInt(2, c.getCid());
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteCategory(int cid) {
        String sql = "DELETE FROM categories"
                + " WHERE cid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, cid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    // Product - Admin
    // insert vao ca Product va ProductDetail vs ProductDTO
    public void insertProduct(ProductDTO p) {

        try {
            // insert vao product cac truong: pid,image, title, price,, discount,  cid, quantity
            String sql = "INSERT INTO products VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, p.getPid());
            ps.setString(2, p.getTitle());
            ps.setDouble(3, p.getPrice());
            ps.setDouble(4, p.getDiscount());
            ps.setInt(5, p.getCid());
            ps.setString(6, p.getImage());
            ps.setString(7, "");
            ps.setString(8, "");
            ps.setString(9, "");
            ps.setInt(10, p.getQuantity());

            ps.executeUpdate();

            // insert vao product-detail cac truong: material, design, brand, fit
            String sql1 = "INSERT INTO detail VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setInt(1, p.getPid());
            ps1.setString(2, p.getMaterial());
            ps1.setString(3, p.getDesign());
            ps1.setString(4, p.getBrand());
            ps1.setString(5, "");
            ps1.setString(6, p.getFit());
            ps1.setString(7, "");
            ps1.setString(8, "");
            ps1.setString(9, "");

            ps1.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(ProductDTO p) {

        try {
            // update bang product
            String sql = "UPDATE [dbo].[products]\n"
                    + "   SET [title] = ?\n"
                    + "      ,[price] = ?\n"
                    + "      ,[discount] = ?\n"
                    + "      ,[cid] = ?\n"
                    + "      ,[image] = ?\n"
                    + "      ,[quantity] = ?\n"
                    + " WHERE [pid] = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getTitle());
            ps.setDouble(2, p.getPrice());
            ps.setDouble(3, p.getDiscount());
            ps.setInt(4, p.getCid());
            ps.setString(5, p.getImage());
            ps.setInt(6, p.getQuantity());
            ps.setInt(7, p.getPid());

            ps.executeUpdate();

            // update vao bang detail
            String sql1 = "UPDATE [dbo].[detail]\n"
                    + "   SET [material] = ?\n"
                    + "      ,[design] = ?\n"
                    + "      ,[brand] = ?\n"
                    + "      ,[fit] = ?\n"
                    + " WHERE [pid] = ?";
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setString(1, p.getMaterial());
            ps1.setString(2, p.getDesign());
            ps1.setString(3, p.getBrand());
            ps1.setString(4, p.getFit());
            ps1.setInt(5, p.getPid());

            ps1.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void deleteProduct(int pid) {
        
        String sql1 = "DELETE FROM detail"
                + " WHERE pid = ?";
        try {
            PreparedStatement ps1 = connection.prepareStatement(sql1);
            ps1.setInt(1, pid);
            ps1.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        String sql = "DELETE FROM products"
                + " WHERE pid = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        
        
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getProducts();
        for (Product x : list) {
            System.out.println(x);
        }
    }
}
