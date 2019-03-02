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
 * Servlet implementation class LoginPageServlet
 */
@WebServlet("/LoginPageServlet")
public class LoginPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPageServlet() {
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
		if(session.getAttribute("userName")!=null) {
			//说明曾经有用户选择过一周内自动登录
			request.getRequestDispatcher("show").forward(request, response);
		}else {
			String msg=(String) request.getAttribute("message");
			if(msg!=null) {
				out.print(msg);
			}
			out.print("<html>"
					+ "<body>"
						+ "<form action='check'>"
								+"用户名:<input type='text' name='userName'/><br>"
								+"密         码:<input type='password' name='password' style='margin-top:10px'/>"
								+ "<br>"
								+"<input type='submit' value='登录' style='margin-top:5px' />"
								+"<input type='submit' value='取消' style='margin-left:20px;margin-top:5px'/>"
								+ "<br>"
								+"<input type='checkbox' name='auto' style='margin-top:5px' value='auto'/>"
								+ "<label>一周内自动登录</label>"
								+"</form>"
								+"</body> "
							+ "</html>");
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
