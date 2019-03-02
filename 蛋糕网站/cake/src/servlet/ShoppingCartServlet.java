package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.ShoppingCartBean;
import bean.ShoppingCartDetailBean;
import bean.UserBean;
import dao.CartDao;
import dao.CartDetailDao;

/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int userId=0;
		if(session.getAttribute("user")==null) {
			request.getRequestDispatcher("failure.jsp?error=请先登录").forward(request, response);;
		}else {
			UserBean user=(UserBean) session.getAttribute("user");
			System.out.println("我的ID"+user.getUserId());
			userId=user.getUserId();
			//int CakeId=Integer.parseInt(request.getParameter("id"));
			CartDao dao1=new CartDao();
			ShoppingCartBean cart=dao1.getCartByUid(userId);
			
				
				
			
			CartDetailDao dao2=new CartDetailDao();
			if(dao2.getCartDetailListBy(cart.getShoppingCartId())==null) {
				request.getRequestDispatcher("failure.jsp&error=you cart is empty");
				
			}
			
			
			List<ShoppingCartDetailBean> cartDetailList=dao2.getCartDetailListBy(cart.getShoppingCartId());
			request.setAttribute("cartDetailList", cartDetailList);
			request.getRequestDispatcher("shoppingCart.jsp").forward(request, response);
			
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
