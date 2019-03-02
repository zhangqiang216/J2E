package servlet;

import java.io.IOException;
import java.util.ArrayList;
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
 * Servlet implementation class BookListServlet1
 */
@WebServlet("/BookListServlet1")
public class BookListServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookListServlet1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDao bookDao = new BookDao();
		String currentPageStr = request.getParameter("currentPage");
		int currentPage = 1;
		if(currentPageStr != null && !currentPageStr.equals("")) {
			currentPage = Integer.parseInt(currentPageStr);
		}
		HttpSession session = request.getSession();
		List<BookBean> bookList = null;
		if(session.getAttribute("bookList") == null) {
			bookList = bookDao.getAllBook();
		}else {
			bookList = (List<BookBean>)session.getAttribute("bookList");
		}
		session.setAttribute("bookList", bookList);
		Page page = new Page();
		page.setColumnCount(bookList.size());
		page.setCurrentPage(currentPage);
		
		List<BookBean> subBookList = new ArrayList<BookBean>();
		int fromIndex = (currentPage-1) * page.getColumnPage();
		int yuShu = page.getColumnCount() % page.getColumnPage();
		
		int toIndex = (currentPage < page.getPageCount())?(fromIndex + page.getColumnPage()):(fromIndex + yuShu);
		
		subBookList = bookList.subList(fromIndex, toIndex);
		
		request.setAttribute("subBookList", subBookList);
		request.setAttribute("page", page);
		request.getRequestDispatcher("booklist1.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
