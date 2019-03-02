package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginCheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String[] values = request.getParameterValues("auto");
		HttpSession session = request.getSession();
		if("".equals(userName)||"".equals(password)) {
			request.setAttribute("message", "请填入用户名和密码");
			request.getRequestDispatcher("login").forward(request, response);
		}else {
			if(!userName.equals(session.getAttribute("userName"))) {
				//说明该用户在之前没有选择过自动登录
				if(values!=null) {
					//该用户第一次选择自动登录
					session.setMaxInactiveInterval(60*60*24*7);
					Cookie cookie=new Cookie("JSESSIONID",session.getId());
					cookie.setMaxAge(60*60*24*7);
					session.setAttribute("userName", userName);
					response.addCookie(cookie);
					request.getRequestDispatcher("/ProductList.html").forward(request, response);
				}
				else {
					//该用户这一次也没有选择自动登录 不给session设置期限
					session.setAttribute("userName", userName);
					request.getRequestDispatcher("/ProductList.html").forward(request, response);
				}
			}else {
				//说明用户之前选择过自动登录
				request.getRequestDispatcher("show").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
