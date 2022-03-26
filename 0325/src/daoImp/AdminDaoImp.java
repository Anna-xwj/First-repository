package daoImp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import dao.AdminDao;
import dao.BaseDao;
import entity.Admin;

public  class AdminDaoImp extends BaseDao implements AdminDao {

	@Override
	public ResultSet Login(Connection conn, Admin admin) throws SQLException {
		String sql="select * from admin where username=? and password=?";
		return super.selectDate(conn,sql,admin.getUsername(),admin.getPassword());
	}

	@Override
	public int insertAdmin(Connection conn, Admin admin) throws SQLException {
		String sql = "insert into admin (username,password,email) values (?,?,?)";
		Object[] objs= {admin.getUsername(),admin.getPassword(),admin.getEmail()};
		return super.updateDate(conn, sql, objs);	
		
	}

	@Override
	public int updateAdmin(Connection conn,  String password,String username, String email) throws SQLException {
		
		String sql = "update admin set password=? where username=? and email=?";
		System.out.println("确认要修改密码吗："+password);
		return super.updateDate(conn, sql,password,username, email);
	}

	@Override
	public ResultSet selectAdmin(Connection conn, String username, String email) throws SQLException {
		String sql="select *from admin where username =? and email=?";
		return super.selectDate(conn, sql,username,email);
	}

	


}
