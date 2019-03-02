package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AdminBean;
import dao.AdminDao;

/**
 * Servlet implementation class MakeAdminServlet
 */
@WebServlet("/MakeAdminServlet")
public class MakeAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		AdminDao dao=new AdminDao();
		int remark=Integer.parseInt(request.getParameter("remark"));
		
		if(remark==1) {
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String root=request.getParameter("root");
			dao.addAdmin(name, password, email, root);
			request.getRequestDispatcher("/AdminListServlet").forward(request, response);
		}else if(remark==2) {
			int id=Integer.parseInt(request.getParameter("id"));
			dao.deleteAdmin(id);
			request.getRequestDispatcher("/AdminListServlet").forward(request, response);
			
		}else if(remark==3) {
			String name=request.getParameter("name");
			String password=request.getParameter("password");
			String email=request.getParameter("email");
			String root=request.getParameter("root");
		
			int id=Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			dao.updateAdmin(id, name, password, email, root);
			request.getRequestDispatcher("/AdminListServlet").forward(request, response);
			
			
			
		}else if(remark==4) {
			int id=Integer.parseInt(request.getParameter("id"));
			AdminBean admin=dao.findAdmin(id);
			List<AdminBean> list=new ArrayList<AdminBean>();
			list.add(admin);
			request.setAttribute("adminlist", list);
			request.getRequestDispatcher("/admin/admin_list.jsp").forward(request, response);
			
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
