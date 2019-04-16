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
//        basicDataSource.setDefaultAutoCommit(true);
//        basicDataSource.setMaxWait(5);
        basicDataSource.setMaxActive(5);
        basicDataSource.setMinIdle(100);              //Устанавливает минимальное количество незанятых соединений в пуле.
        basicDataSource.setMaxIdle(10000);             //Устанавливает максимальное количество соединений, которые могут оставаться незанятыми в пуле.
    }


    public static Connection getConnection() throws SQLException {
        return basicDataSource.getConnection();
    }



    private DBCPDataSource(){ }
}
