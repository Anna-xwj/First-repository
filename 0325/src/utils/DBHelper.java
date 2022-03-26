package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
	public static String url ="jdbc:mysql://localhost:3306/s03?serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8&userSSL=false";
	public static String user ="root";
	public static String password ="123456";
	
	private static Connection conn=null;
	
	static {
		// 1：加载驱动
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("---驱动加载成功---");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
	}
	public static Connection getConnection() {
		//2：取得连接
		try {
			return DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**public static Connection getConnection() throws Exception {
		if (conn == null) {
			conn = DriverManager.getConnection(url, user, password);
			return conn;
		}
		return conn;
	}**/
 /**测试数据库是否连接正常
	public static void main(String[] args) {
		try {
			Connection conn = DBHelper.getConnection();
			if (conn != null) {
				System.out.println("数据库连接正常");
			} else {
				System.out.println("数据库连接异常");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}**/

}
