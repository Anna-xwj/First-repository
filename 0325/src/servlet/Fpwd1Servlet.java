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


@WebServlet("/Fpwd1")
public class Fpwd1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AdminServiceImp ad;
	
    public Fpwd1Servlet() {
    	ad = new AdminServiceImp();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		
		Admin admin_test=ad.findAdmin(username,email);
		System.out.println("确认要修改密码吗："+admin_test);
		
		PrintWriter out=response.getWriter();
		Admin admin_test1=ad.findAdmin(username,email);
		if(admin_test1!=null) {
			out.write("<script>alert('验证身份成功');location.href='fpasswd2.jsp';</script>");
		}else {
			out.write("<script>alert('验证身份失败');history.back()</script>");
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
