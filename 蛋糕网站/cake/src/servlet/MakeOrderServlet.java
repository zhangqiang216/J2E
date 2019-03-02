package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import dao.OrderDao;
import dao.OrderDetailDao;

/**
 * Servlet implementation class MakeOrderServlet
 */
@WebServlet("/MakeOrderServlet")
public class MakeOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		int cakeId=Integer.parseInt(request.getParameter("cakeId"));
		int count=0;
		if(request.getParameter("number")!=null) {
			count=Integer.parseInt(request.getParameter("number"));
		}
		//String remark=request.getParameter("remark");
		HttpSession session = request.getSession();
		int userId=0;
		if(session.getAttribute("user")==null) {
			request.getRequestDispatcher("failure.jsp?error=请先登录").forward(request, response);;
		}else {
			UserBean user=(UserBean) session.getAttribute("user");
			
			System.out.println("我的ID好像是"+user.getUserId());
			userId=user.getUserId();
			int orderId;
			if(session.getAttribute("orderId")==null) {
				OrderDao dao1=new OrderDao();
				System.out.println("运行到了这里");
				orderId=dao1.addOrder(userId);
				session.setAttribute("orderId", orderId);
			}else {
				orderId=(int)session.getAttribute("orderId");
			}
			 
			OrderDetailDao dao2=new OrderDetailDao();
			dao2.addOrderDetail(orderId, cakeId, count);
			request.getRequestDispatcher("ShowOrderServlet").forward(request, response);
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
