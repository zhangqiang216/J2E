package view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class ShowShoppingCartServlet
 */
@WebServlet("/ShowShoppingCartServlet")
public class ShowShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		List <String>bl=(List)session.getAttribute("booklist");
		String userName =(String) session.getAttribute("userName");
		if(userName==null) {
			out.print("<script language='javascript'>"
					+"alert('请先登录！');"
					+"window.location.href='login';"
					+ "</script>");
		}
		if(bl==null) {
			out.print("<html>"
					+ "<body>");
			out.print("<h1>购物车竟然是空的，再忙，也要记得买本书犒赏自己~</h1>");
			out.print("<a href='ProductList.html'>去书城转转</a>");
			out.print("</body>"
					+ "</html>");
		}else{
			out.print("<html>"
					+"<h1>"
					+userName+"您好！这是您的购物车:"+"<br/>"
					+ "</h1>"
					+ "<body>");
			for(String bookname:bl) {
				out.print("<p>"
						+bookname
						+ "</p>");
			}
			out.print("<a href='ProductList.html'>返回书城</a>");
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
