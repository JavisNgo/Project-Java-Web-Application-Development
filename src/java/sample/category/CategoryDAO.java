/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.category;

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
public class CategoryDAO {
    public static final String READ = "SELECT * FROM tblCategory";
    
    public List<CategoryDTO> ShowCategory() throws SQLException {
        List<CategoryDTO> list = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null; 
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(READ);
            rs = ptm.executeQuery();
            while(rs.next()) {
                String categoryID = rs.getString("categoryID");
                String categoryName = rs.getString("categoryName");
                list.add(new CategoryDTO(categoryID, categoryName));
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
        return list;
    }
}
