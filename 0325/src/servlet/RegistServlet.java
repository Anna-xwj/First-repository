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


@WebServlet("/Regist")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	AdminServiceImp ad;
	
	public RegistServlet() {
		ad = new AdminServiceImp();
	}
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		
		Admin admin=new Admin(username,password,email);
		System.out.println(admin);
		
	
		PrintWriter out=response.getWriter();
		int i=ad.addAdmin(admin);
		if(i>0) {
			out.write("<script>location.href='./index.html';alert('×¢²á³É¹¦')</script>");
		}else {
			out.write("<script>alert('×¢²áÊ§°Ü');history.back()</script>");
		}
		
	}
	
	

	
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		doGet(request, response);
	}
}


