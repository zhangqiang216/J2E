package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ShoppingCartBean;
import bean.UserBean;
import dao.CartDao;
import dao.CartDetailDao;

/**
 * Servlet implementation class MakeShoppingCartServlet
 */
@WebServlet("/MakeShoppingCartServlet")
public class MakeShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int cakeId=Integer.parseInt(request.getParameter("cakeId"));
		int count=0;
		if(request.getParameter("number")!=null) {
			count=Integer.parseInt(request.getParameter("number"));
		}
		String remark=request.getParameter("remark");
		
		HttpSession session = request.getSession();
		int userId=0;
		if(session.getAttribute("user")==null) {
			request.getRequestDispatcher("failure.jsp?error=请先登录").forward(request, response);;
		}else {
		//int CakeId=Integer.parseInt(request.getParameter("id"));
			UserBean user=(UserBean) session.getAttribute("user");
			System.out.println("我的ID"+user.getUserId());
			userId=user.getUserId();
			CartDao dao1=new CartDao();
			ShoppingCartBean cart=dao1.getCartByUid(userId);
			int CartId=cart.getShoppingCartId();
			CartDetailDao dao2=new CartDetailDao();
			//处理选择
			if(remark.equals("add")) {
				dao2.add(CartId, cakeId, count);
			}else if(remark.equals("delete")) {
				dao2.deleteCartDetail(CartId,cakeId);
			}
//			else if(remark.equals("buy")){
//				request.getRequestDispatcher("MakeOrderServlet").forward(request, response);
//			}
			//转发选择
			
			if(remark.equals("add")) {
				request.getRequestDispatcher("CakeServlet").forward(request, response);
			}else if(remark.equals("delete")){
				request.getRequestDispatcher("ShoppingCartServlet").forward(request, response);
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
