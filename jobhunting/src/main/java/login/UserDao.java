package login;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
 
public class UserDao {
 
    private static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/jobhunting_db?serverTimezone=JST","root", "mysql");
        } catch (Exception e) {
            throw new IllegalArgumentException(e);
        }
    }
 
    private static void allClose(PreparedStatement statement, Connection connection) {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
 
    }
 
    static Connection connection = null;
    static PreparedStatement statement = null;
 
    //以下、ユーザーログイン
    public UserDto findUser(String id) {
        UserDto user = new UserDto();
 
        try {
            connection = getConnection();
 
            statement = connection.prepareStatement("SELECT * FROM account WHERE accountid = ?");
            statement.setString(1, id);
            ResultSet resultSet = statement.executeQuery();
 
            if (!resultSet.next()) { return null; }
 
            user.setUserid(resultSet.getString(1)); //ユーザid
            user.setPassword(resultSet.getString(5)); //ユーザpwd
            user.setRole(resultSet.getInt(6));  //role（管理者：１、利用者：２）
 
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            allClose(statement, connection);
        }
        return user;
 
    }

    //以下、登録済みユーザ一覧
    public ArrayList<UserDto> getUserList() {
        ArrayList<UserDto> list = new ArrayList<UserDto>();
 
        try {
            connection = getConnection();
 
            statement = connection.prepareStatement("SELECT * FROM account");
            ResultSet resultSet = statement.executeQuery();
 
            while (resultSet.next()) {
                UserDto ud = new UserDto();
                ud.setName(resultSet.getString(2));
                ud.setUserid(resultSet.getString(1));
                ud.setPassword(resultSet.getString(5));
                list.add(ud);
            }
 
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            allClose(statement, connection);
        }
        return list;
 
    }
 
    //以下、ユーザー登録
    public int regUser(String id,String name,String address,String number,String password,String role) {
        int result = 0;
 
        try {
            connection = getConnection();
 
            statement = connection.prepareStatement("INSERT INTO account (accountid,accountname,accountmailaddress,classnumber,accountpassword,roleid) VALUES (?, ?, ?, ?, ?, ?)");
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, address);
            statement.setString(4, number);
            statement.setString(5, password);
            statement.setString(6, role);
            result = statement.executeUpdate();
 
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            allClose(statement, connection);
        }
        return result;
 
    }
 
    //以下、ユーザ削除
    public int delUser(String id,String name,String address,String number,String password,String role) {
        int result = 0;
 
        try {
            connection = getConnection();
 
            statement = connection.prepareStatement("DELETE FROM account WHERE id = ? AND name = ? AND address = ? AND number = ? AND password = ? AND role = ?");
            statement.setString(1, id);
            statement.setString(2, name);
            statement.setString(3, address);
            statement.setString(4, number);
            statement.setString(5, password);
            statement.setString(6, role);
            result = statement.executeUpdate();
 
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            allClose(statement, connection);
        }
        return result;
 
    }
 
}