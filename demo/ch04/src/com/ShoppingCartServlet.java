package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String bookName=request.getParameter("bookName");
		//获取Cookie
//		Cookie[] cookies=request.getCookies();
//		String userName="";
//		if(cookies != null) {
//			for(Cookie cookie:cookies) {
//				if("userName".equals(cookie.getName())) {
//					userName=cookie.getValue();
//					
//				}
//				
//			}
//		}
		HttpSession session=request.getSession();
		String userName=(String)session.getAttribute("userName");
		Object object=session.getAttribute("cartList");
		List<String> cartList;
		if(object==null) {
			cartList=new ArrayList<String>();
			cartList.add(bookName);
		}else {
			cartList=(List)object;
			cartList.add(bookName);
			
		}
		session.setAttribute("cartList", cartList);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print(userName+"购买了："+"<br>");
		out.print(cartList);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
