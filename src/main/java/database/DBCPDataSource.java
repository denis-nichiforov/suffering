package database;

import org.apache.commons.dbcp.BasicDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class DBCPDataSource {


    private static BasicDataSource basicDataSource = new BasicDataSource();

    static {
        basicDataSource.setUrl("jdbc:mysql://localhost:3306/date?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
        basicDataSource.setUsername("root");
        basicDataSource.setPassword("nikoli");
        basicDataSource.setDefaultAutoCommit(true);
        basicDataSource.setMaxActive(1000);
        basicDataSource.setMinIdle(-1);              //Устанавливает минимальное количество незанятых соединений в пуле.
        basicDataSource.setMaxIdle(-1);             //Устанавливает максимальное количество соединений, которые могут оставаться незанятыми в пуле.
        basicDataSource.setMaxOpenPreparedStatements(10);
    }


    public static Connection getConnection() throws SQLException {
        return basicDataSource.getConnection();
    }



    private DBCPDataSource(){ }
}
