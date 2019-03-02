package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CakeBean;
import bean.CakeDetailBean;
import dao.CakeDao;
import dao.CakeDetailDao;

/**
 * Servlet implementation class SingleServlet
 */
@WebServlet("/SingleServlet")
public class SingleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int Id=Integer.parseInt(request.getParameter("cake_Id"));
		CakeDao cakeDao=new CakeDao();
		CakeDetailDao cakeDetailDao=new CakeDetailDao();
		CakeBean cakeBean=cakeDao.getCakeById(Id);
		if(cakeBean==null) {
			
			request.getRequestDispatcher("failure.jsp?error=sorry cake not exist").forward(request, response);
		}
		CakeDetailBean cakeDetailBean=cakeDetailDao.getCakeDetailById(Id);
		request.setAttribute("cake", cakeBean);
		request.setAttribute("cakeDetail", cakeDetailBean);
		request.getRequestDispatcher("single.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
