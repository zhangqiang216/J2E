package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class main
 */
@WebServlet("/main")
public class main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String userName = request.getParameter("username");
	     String passWord = request.getParameter("password");
	     String checkBox = request.getParameter("save_password");
	     if(!("".equals(userName))&&!("".equals(passWord))) {
	    	 	HttpSession session=request.getSession();
	    	 	session.setAttribute("userName", userName);
	            if ("save".equals(checkBox)) {
	            	session.setMaxInactiveInterval(60*60*24*7);
					Cookie cookie=new Cookie("JSESSIONID",session.getId());
					cookie.setMaxAge(3600*24*7);
					response.addCookie(cookie);
	             }
	             request.getRequestDispatcher("welcome.jsp").forward(request, response);           
	        }   
	        else{
	             response.sendRedirect("loginFail.jsp");      
	              
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
