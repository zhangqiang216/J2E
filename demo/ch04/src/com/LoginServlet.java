package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//获取登录内容
		response.setContentType("text/html;charset=utf-8");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String isdeng=request.getParameter("isDeng");
		
		HttpSession session=request.getSession();
		session.setAttribute("userName", userName);
		
		//创建Cookie对象
		//Cookie cookie=new Cookie("userName",userName);
		//设置Cookie时效
		//cookie.setMaxAge(60*60*24*7);
		//将cookie添加到响应头信息
		//response.addCookie(cookie);
		PrintWriter out=response.getWriter();
		out.print("isDeng:"+isdeng);
		out.print("hello,"+userName+"<br>");
		out.print("JavaEE指南<a href='ShoppingCartServlet?bookName=JavaEE'>购买</a><br>");
		out.print("JavaSE指南<a href='ShoppingCartServlet?bookName=JavaSE'>购买</a><br>");
		out.print("Spring指南<a href='ShoppingCartServlet?bookName=Spring'>购买</a><br>");
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
