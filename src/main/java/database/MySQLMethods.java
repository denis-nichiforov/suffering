package database;

import java.sql.*;

abstract public class  MySQLMethods {


     private static Connection connection;

    static {
        try {
            connection = DBCPDataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

//    private static Connection connection;
//
//
//    public static Driver driver = getDriver();
//
//    public static Connection getConnection() {
//
//        try {
//            connection = DriverManager.getConnection(MySQLConfigTemplate.URL, MySQLConfigTemplate.USERNAME, MySQLConfigTemplate.PASSWORD);
//
//        } catch (SQLException e) {
//            System.out.println("Error: " + e.getMessage());
//            e.printStackTrace();
//        }
//        return connection;
//
//    }
//
//
//    private static Driver getDriver() {
//        Driver d = null;
//        try {
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return d;
//    }

    public static ResultSet executeQuery(String execute) throws SQLException {
//        Connection connection = MySQLMethods.getConnection();

//        connection.close();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(execute);

        return resultSet;

    }


    public static void insertQuery(String insert) throws SQLException {
//       Connection connection = MySQLMethods.getConnection();


        Statement statement = connection.createStatement();
        statement.executeUpdate(insert);
//        connection.close();

    }

    public static void updateQyery(String update) throws SQLException {
//        Connection connection = MySQLMethods.getConnection();

        Statement statement = connection.createStatement();
        statement.executeUpdate(update);
//        connection.close();


    }

    public static void deleteQyery(String delete) throws SQLException {
//        Connection connection = MySQLMethods.getConnection();

        Statement statement = connection.createStatement();
        statement.executeUpdate(delete);
//        connection.close();
    }


}
