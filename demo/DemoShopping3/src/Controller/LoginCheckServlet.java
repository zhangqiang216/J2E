package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.UserBean;

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
		String name=request.getParameter("userName");
		String password=request.getParameter("password");
		String autologin=request.getParameter("autologin");
		if(!"".equals(name)&&!"".equals(password)) {
			HttpSession session=request.getSession();
			UserBean user=new UserBean(name,password);
			session.setAttribute("user", user);
			if("on".equals(autologin)) {
				session.setMaxInactiveInterval(60*60*24*7);
				Cookie cookie=new Cookie("JSESSIONID",session.getId());
				cookie.setMaxAge(3600*24*7);
				response.addCookie(cookie);
			}
			response.sendRedirect("ProductList.jsp");//过滤考虑
		}else {
			String msg="用户名或密码为空";
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
			
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
