package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookieDemo
 */
@WebServlet("/CookieDemo")
public class CookieDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		


	

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter writer = response.getWriter();
		Cookie[] cookies = request.getCookies();
		String visitorName = null;
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if ("vName".equals(cookie.getName())) {
					visitorName = cookie.getValue();
					break;
				}
			}
			if (visitorName != null) {
				writer.write("hi <b>" + visitorName + "</b>, welcome come back!");
			} else {
				writer.write("<form method='post' action='CookieDemoAdd'>please input your name:<input type='text' name='name' /><input type='submit' /></form>");
			}
		} else {
			writer.write("<form method='post' action='CookieDemoAdd'>please input your name:<input type='text' name='name' /><input type='submit' /></form>");
		}



	}

}
