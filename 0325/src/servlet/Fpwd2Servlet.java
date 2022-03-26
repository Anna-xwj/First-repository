package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Admin;
import serviceImp.AdminServiceImp;

@WebServlet("/Fpwd2")
public class Fpwd2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminServiceImp ad;
	
    public Fpwd2Servlet() {
    	ad = new AdminServiceImp();
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
//		Admin admin=new Admin();admin.getUsername();admin.getEmail();
//		String username=request.getSession().setAttribute(name, value);
//		String email=
		Admin admin=new Admin();
		String password = request.getParameter("password");
		System.out.println(admin);
//		ad.modifyAdmin(password,username, email);
//		String password1=admin.getPassword();
		PrintWriter out=response.getWriter();
		if(admin!=null) {
			out.write("<script>alert('重置成功');location.href='./index.html';</script>");
		}else {
			out.write("<script>alert('重置失败')</script>");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
