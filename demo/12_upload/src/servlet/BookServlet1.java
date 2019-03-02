package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.BookBean;
import common.Page;
import dao.BookDao;

/**
 * Servlet implementation class BookServlet1
 */
@WebServlet("/BookServlet1")
public class BookServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookServlet1() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDao bookDao = new BookDao();
		HttpSession session = request.getSession();
		List<BookBean> bookList = null;
		if(session.getAttribute("bookList")==null) {
			bookList = bookDao.getAllBook();
			session.setAttribute("bookList", bookList);
		}else {
			bookList = (List<BookBean>)session.getAttribute("bookList");
		}
		
		String currentPageStr = request.getParameter("currentPage");
		int currentPage;
		if(currentPageStr == null || currentPageStr.equals("")) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		
		Page page = new Page();
		page.setCurrentPage(currentPage);
		page.setColumnCount(bookList.size());
		int fromIndex = (currentPage-1) * page.getColumnPage();
		boolean b = currentPage == page.getPageCount();
		int yuShu = page.getColumnCount() % page.getColumnPage();
		int toIndex ;
		if(yuShu == 0) {
			toIndex =  fromIndex + page.getColumnPage();
		}else {
			toIndex = b?(fromIndex + yuShu):(fromIndex + page.getColumnPage());
		}
		List<BookBean> subBookList = bookList.subList(fromIndex, toIndex);
		request.setAttribute("subBookList", subBookList);
		request.setAttribute("page", page);
		request.getRequestDispatcher("booklist1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
