package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CakeBean;
import common.Page;
import dao.CakeDao;

/**
 * Servlet implementation class CakeServlet
 */
@WebServlet("/CakeServlet")
public class CakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CakeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		CakeDao cakeDao=new CakeDao();
		List<CakeBean> subCakeList=null;
		String currentPageStr = request.getParameter("currentPage");
		int currentPage;
		if(currentPageStr == null || currentPageStr.equals("")) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		Page page = new Page();
		page.setColumnPage(9);
		page.setCurrentPage(currentPage);
		page.setColumnCount(cakeDao.getCount());
		int fromIndex = (currentPage-1) * page.getColumnPage()+2;
		int yuShu = page.getColumnCount() % page.getColumnPage();
		int count=fromIndex+page.getPageCount()>page.getColumnCount()?yuShu:page.getColumnPage();
		subCakeList=cakeDao.getSomeCake(fromIndex, count);
		request.setAttribute("subCakeList", subCakeList);
		request.setAttribute("page", page);
		request.getRequestDispatcher("product.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
