package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Admin;
import serviceImp.AdminServiceImp;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	AdminServiceImp ad;       
    public LoginServlet() {
    	ad = new AdminServiceImp();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//��ȡ�û���������
		 String username= request.getParameter("username");
		 String password= request.getParameter("password");
		 System.out.println(username+","+password);
		 

		PrintWriter out = response.getWriter();
		 Admin admin = ad.findAdminByLogin(new Admin(username,password));
		
		 if( admin != null) {
			 out.write("<script>alert('��ϲ����¼�ɹ���');location.href='1choose.jsp'</script>");
		}else {
			out.write("<script>alert('�Բ����û������������');history.back();</script>");
		}
		 
		 

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
