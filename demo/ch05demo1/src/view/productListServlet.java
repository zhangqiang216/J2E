package view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class productListServlet
 */
@WebServlet("/productListServlet")
public class productListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.print("当前在线人数："+getServletContext().getAttribute("onlineNum"));
		out.print("当前在线会员数："+getServletContext().getAttribute("vipNum"));
		out.println("<a>javaEE</a>");
		out.println("<a>javaSE</a>");
		out.println("<a>Spring</a>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
