package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import dao.CartDao;
import dao.OrderDao;
import dao.UserDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("username");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		int pho=0;
		if(request.getParameter("telephone")!=null) {
			 pho=Integer.parseInt(request.getParameter("telephone"));
		}
		String adr=request.getParameter("city");
		UserDao dao=new UserDao();
		int id=dao.addUser(name, pwd, email, pho, adr);
		UserBean newUser=dao.getUserById(id);
		HttpSession session = request.getSession();
		session.setAttribute("orderId",null);
		session.setAttribute("user", newUser);
		CartDao cartdao=new CartDao();
		cartdao.addCartByuId(id);
		request.getRequestDispatcher("successful.jsp?tag=恭喜你注册成功").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
