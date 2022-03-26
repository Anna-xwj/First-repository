package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.Admin;

public interface AdminDao {
	ResultSet Login(Connection conn,Admin admin)throws SQLException;
	
	int insertAdmin(Connection conn,Admin admin) throws SQLException;
	
	ResultSet selectAdmin(Connection conn,String username,String email)throws SQLException;
	
	
	int updateAdmin(Connection conn,String password,String username,String email) throws SQLException;

}
