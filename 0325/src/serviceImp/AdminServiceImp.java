package serviceImp;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import daoImp.AdminDaoImp;
import entity.Admin;
import service.AdminService;
import utils.DBHelper;

public class AdminServiceImp implements AdminService{
	private AdminDaoImp ad;//不可继承
	
	public AdminServiceImp()//构造方法赋值
	{
		ad=new AdminDaoImp();
	}

	@Override
	public Admin findAdminByLogin(Admin admin) {
		Connection conn= DBHelper.getConnection();
		try {
			ResultSet set= ad.Login(conn, admin);
			if(set.next()) {
				String username = set.getString("username");
				String password = set.getString("password");
				return new Admin(username,password);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ad.closeALL();
		}
		return null;
	}

	@Override
	public int addAdmin(Admin admin) {
		Connection conn = DBHelper.getConnection();
		try {
			return ad.insertAdmin(conn, admin);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ad.closeALL();
		}
		return 0;
	
	}

	
	@Override
	public Admin findAdmin(String username, String email) {
		Connection conn = DBHelper.getConnection();
		try {
			ResultSet set=ad.selectAdmin(conn,username,email);
			if(set.next()){
				String username1=set.getString("username");
				String email1 = set.getString("email");
				return new Admin(username1,email1,1);
		}		
	}catch (SQLException e) {
				e.printStackTrace();
	}finally {
			ad.closeALL();
	}
		return null;
	}

	@Override
	public int modifyAdmin(String password,String username,String email) {

		System.out.println("确认要修改密码吗："+password);
		
		Connection conn = DBHelper.getConnection();
		try {
			return ad.updateAdmin(conn,password,username,email);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			ad.closeALL();
	}
		return 0;
	}

	
	

}
