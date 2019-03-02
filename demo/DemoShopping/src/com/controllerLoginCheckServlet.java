package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class controllerLoginCheckServlet
 */
@WebServlet("/controllerLoginCheckServlet")
public class controllerLoginCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerLoginCheckServlet() {
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
		String autologin=request.getParameter("autologin");
		HttpSession session=request.getSession();
		Object attribute = session.getAttribute("auto");
		Cookie user=new Cookie("userName",userName);
		response.addCookie(user);
		user.setMaxAge(3600*24*7);
		if(attribute==null) {
			session.setAttribute("auto",autologin);
			if(autologin!=null) {
				session.setMaxInactiveInterval(3600*24*7);
				//response.sendRedirect("productList.html");
				request.getRequestDispatcher("productList.html").forward(request, response);
			}else {
				if((userName=="")||(password=="")) {
					response.getWriter().write("<form action=\"controllerLoginCheckServlet\">\r\n" + 
							"	<text>用户名:</text><input type=\"text\" name=\"userName\"><br> \r\n" + 
							"	<text>密&nbsp&nbsp&nbsp&nbsp码:</text><input type=\"password\" name=\"password\"><br> \r\n" + 
							"	<text>自动登录:</text><input type=\"checkbox\" name=\"autologin\"><br> \r\n" + 
							"	<input type=\"reset\" value=\"重置\"><input type=\"submit\" value=\"登录\">  \r\n" + 
							"</form>");
					response.getWriter().write("<font color=\"red\">请填入用户名和密码</font> ");
				}else {
					request.getRequestDispatcher("productList.html").forward(request, response);
				}
				
			}
			
		}else {

				request.getRequestDispatcher("viewShowShoppingCartServlet").forward(request, response);
			
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
