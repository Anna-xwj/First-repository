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
		// 1����������
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("---�������سɹ�---");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
	}
	public static Connection getConnection() {
		//2��ȡ������
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
 /**�������ݿ��Ƿ���������
	public static void main(String[] args) {
		try {
			Connection conn = DBHelper.getConnection();
			if (conn != null) {
				System.out.println("���ݿ���������");
			} else {
				System.out.println("���ݿ������쳣");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}**/

}
