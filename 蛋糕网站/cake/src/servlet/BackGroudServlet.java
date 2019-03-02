package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import dao.UserDao;

/**
 * Servlet implementation class BackGroudServlet
 */
@WebServlet("/BackGroudServlet")
public class BackGroudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BackGroudServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String name=request.getParameter("username");
		String password=request.getParameter("pwd");
		if(name==null&&password==null) {
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		}
		System.out.println(name+";"+password);
		AdminDao dao=new AdminDao();
		int flag=dao.isTrue(name, password);
		if(flag==1) {
			HttpSession session=request.getSession();
			session.setAttribute("adminName",name);
			
			request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
		}else {
			response.getWriter().append("用户名或密码错误");
		}
		
		
		
		//response.sendRedirect("/cake/admin/index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
