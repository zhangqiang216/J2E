package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		// TODO Auto-generated method stub
		 //response.setContentType("text/html;charset=utf-8"); 
        //此出注解是因为使用CodeFilter类过滤所有Servlet，转换编码
        //request.setCharacterEncoding("utf-8");
			String input_textarea = request.getParameter("input_textarea");
			
	        Date now = new Date();    //创建日期对象，及系统当前时间
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
	        String time = dateFormat.format( now ); //按照给定的日期格式获取系统当前时间
	        String t = (String)request.getSession().getAttribute("nameSession");  //获取登陆页面用户名
	        chat_record += t+"  "+input_textarea+"  "+time+"\n";   //聊天记录存储
	        request.setAttribute("input_textarea",chat_record); //将当前聊天输入内容存储
	        request.getRequestDispatcher("main.jsp").forward(request,response);  //跳转到当前聊天输入界面，即界面布局不变
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
