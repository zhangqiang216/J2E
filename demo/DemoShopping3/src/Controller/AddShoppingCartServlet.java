package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddShoppingCartServlet
 */
@WebServlet("/AddShoppingCartServlet")
public class AddShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String bookname=request.getParameter("bookname");
		System.out.println(bookname);
		HttpSession session=request.getSession();
		Object object=session.getAttribute("shoppingCart");
		List<String> shoppingCart;
		if(object==null) {
			shoppingCart=new ArrayList<String>();
			
		}else {
			shoppingCart=(ArrayList<String>)object;
		}
		shoppingCart.add(bookname);
		session.setAttribute("shoppingCart",shoppingCart);
		response.sendRedirect("ShowShoppingCart.jsp");
		
		
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
