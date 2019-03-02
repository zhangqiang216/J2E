package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InputInformation
 */
@WebServlet("/InputInformation")
public class InputInformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public String chat_record = "";
	private static List<String> users=new ArrayList<String>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputInformation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("text/html;charset=utf-8"); 
			request.setCharacterEncoding("utf-8");
			String input_textarea = request.getParameter("input_textarea");
	        Date now = new Date();    
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        String time = dateFormat.format( now ); 
	        String t = (String)request.getSession().getAttribute("userName"); 
	        users.add(t);
	        request.setAttribute("users", users);
	        chat_record += t+"  "+input_textarea+"  "+time+"\n"; 
	        request.setAttribute("input_textarea",chat_record); 
	        request.getRequestDispatcher("main.jsp").forward(request,response);  
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
