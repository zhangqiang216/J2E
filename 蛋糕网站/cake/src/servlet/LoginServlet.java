package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import dao.UserDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String autoLogin = request.getParameter("autoLogin");
		UserDao dao=new UserDao();
		int id=0;
		UserBean user=null;
		
		if(dao.isTrue(name, password)==1) {
			id=dao.getId(name, password);
			user=dao.getUserById(id);
			HttpSession session = request.getSession();
			
			session.setAttribute("orderId",null);
			
			session.setAttribute("user", user);
			if("on".equals(autoLogin)) {
				session.setMaxInactiveInterval(60*60*24*7);
				Cookie cookie = new Cookie("JSESSIONID",session.getId());
				cookie.setMaxAge(60*60*24*7);
				response.addCookie(cookie);
			}
			System.out.println("登录成功");
			request.getRequestDispatcher("successful.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("failure.jsp?error=用户名或密码错误!").forward(request, response);
			
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
