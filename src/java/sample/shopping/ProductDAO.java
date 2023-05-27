/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author Admin
 */
public class ProductDAO {
    private static final String READALL = "SELECT * FROM tblProducts";
    private static final String SHOW = "SELECT * FROM tblProducts WHERE productID = ?";
    private static final String SEARCH_BY_CATEGORY = "SELECT * FROM tblProducts WHERE categoryID = ?";
    
    public List<ProductDTO> getlistProduct() throws SQLException {
        List<ProductDTO> listProduct = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null; 
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(READALL);
            rs = ptm.executeQuery();
            while(rs.next()) {
                String id = rs.getString("productID");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String picture = rs.getString("picture");
                String description = rs.getString("description");
                String categoryID = rs.getString("categoryID");
                listProduct.add(new ProductDTO(id, name, price, quantity, picture, description, categoryID));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(rs!=null) {
                rs.close();
            }
            if (ptm !=null) {
                ptm.close();
            }
            if(conn !=null) {
                conn.close();
            }
        }
        return listProduct;
    }
    
    public ProductDTO show(String productID) throws SQLException {
        ProductDTO product = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(SHOW);
            ptm.setString(1, productID);
            rs = ptm.executeQuery();
            if (rs.next()) {
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String picture = rs.getString("picture");
                String description = rs.getString("description");
                String categoryID = rs.getString("categoryID");
                product = new ProductDTO(productID, name, price, quantity, picture, description, categoryID);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return product;
    }
    
    public List<ProductDTO> SearchByCategory(String categoryID) throws SQLException {
        List<ProductDTO> listProduct = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null; 
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(SEARCH_BY_CATEGORY);
            ptm.setString(1, categoryID);
            rs = ptm.executeQuery();
            while(rs.next()) {
                String id = rs.getString("productID");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String picture = rs.getString("picture");
                String description = rs.getString("description");
                listProduct.add(new ProductDTO(id, name, price, quantity, picture, description, categoryID));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(rs!=null) {
                rs.close();
            }
            if (ptm !=null) {
                ptm.close();
            }
            if(conn !=null) {
                conn.close();
            }
        }
        return listProduct;
    }
}
