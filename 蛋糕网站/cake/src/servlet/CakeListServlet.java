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
 * Servlet implementation class CakeListServlet
 */
@WebServlet("/CakeListServlet")
public class CakeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CakeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		CakeDao cakeDao=new CakeDao();
		List<CakeBean> cakelist=null;
		String currentPageStr = request.getParameter("currentPage");
		int currentPage;
		if(currentPageStr == null || currentPageStr.equals("")) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		Page page = new Page();
		page.setColumnPage(10);
		page.setCurrentPage(currentPage);
		page.setColumnCount(cakeDao.getCount());
		int fromIndex = (currentPage-1) * page.getColumnPage()+1;
		int yuShu = page.getColumnCount() % page.getColumnPage();
		int count=fromIndex+page.getPageCount()>page.getColumnCount()?yuShu:page.getColumnPage();
		cakelist=cakeDao.getSomeCake(fromIndex, count);
		request.setAttribute("cakelist", cakelist);
		request.setAttribute("page", page);
		request.setAttribute("true", false);
		request.getRequestDispatcher("/admin/cake_list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
