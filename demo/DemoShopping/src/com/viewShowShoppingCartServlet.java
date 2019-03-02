package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class viewShowShoppingCartServlet
 */
@WebServlet("/viewShowShoppingCartServlet")
public class viewShowShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewShowShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter writer = response.getWriter();
		HttpSession session = request.getSession();
		Object shoppingcart = session.getAttribute("shoppingcart");
		Cookie[] cookies=request.getCookies();
		String userName="";
		for(Cookie cookie:cookies) {
			if("userName".equals(cookie.getName())) {
				userName=cookie.getValue();
			}
		}
		if(userName=="") {
			request.getRequestDispatcher("ViewLoginPageServlet").forward(request, response);
		}
		if (shoppingcart == null) {
			writer.write("购物车竟然是空的，再忙，也要记得买本书犒赏自己~");
		} else {
			writer.write("<h2>我的购物清单:</h2><br />");
			List<String> booklist = (List<String>) shoppingcart;
			for (int i = 1; i < booklist.size()+1; i++) {
				writer.write(i + ": " + booklist.get(i-1).toString() + "<br />");
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
