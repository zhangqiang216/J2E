package com;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class controllerAddShoppingCartServlet
 */
@WebServlet("/controllerAddShoppingCartServlet")
public class controllerAddShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public controllerAddShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String bookName = request.getParameter("name");
		List<String> booklist = null;
		HttpSession session = request.getSession();
		Object shopingcart = session.getAttribute("shoppingcart");
		if (shopingcart == null) {
			booklist = new ArrayList<String>();
			booklist.add(bookName);
			session.setAttribute("shoppingcart", booklist);
			request.getRequestDispatcher("viewShowShoppingCartServlet").forward(request, response);
		} else {
			booklist = (List<String>) shopingcart;
			booklist.add(bookName);
			session.setAttribute("shoppingcart", booklist);
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
