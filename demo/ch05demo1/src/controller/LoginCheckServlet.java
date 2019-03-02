package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginCheckServlet
 */
@WebServlet("/LoginCheckServlet")
public class LoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LoginCheckServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		if(!"".equals(userName)&&!"".equals(password)) {
			
			session.setAttribute("userName", userName);
			response.sendRedirect("productListServlet");
			
		}else {
			String  msg="用户名或密码是空";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("LoginPageServlet").forward(request,response);
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
