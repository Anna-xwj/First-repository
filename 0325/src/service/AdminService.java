package service;

import java.sql.Connection;
import java.sql.SQLException;

import entity.Admin;

public interface AdminService {
	Admin findAdminByLogin(Admin admin);

	int addAdmin(Admin admin);
	
	Admin findAdmin(String username,String email);
	
	int modifyAdmin(String password,String username,String email);
	
	
}
