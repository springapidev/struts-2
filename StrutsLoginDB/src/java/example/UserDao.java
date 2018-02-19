package example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

    public boolean checkLogin(String name, String pass) {
        boolean status = false;
        Connection conn = null;
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/strutslogin", "root", "1234");
            String query = "select name, pass from login where name=? and pass=?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                if (rs.getString("name").equals(name)
                        && rs.getString("pass").equals(pass)) {
                    status = true;
                } else {
                    status = false;
                }

            }
        } catch (SQLException e) {
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
// TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }

        return status;

    }

}
