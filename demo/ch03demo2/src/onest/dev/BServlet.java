package onest.dev;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BServlet
 */
@WebServlet("/BServlet")
public class BServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		ServletConfig config=getServletConfig();
		String role=config.getInitParameter("role");
		//获取ServletContext(整个应用范围内唯一一个)
		ServletContext context=getServletContext();
		String info=context.getInitParameter("info");
		PrintWriter out=response.getWriter();
		out.print("role:"+role+"<br>");
		out.print("info:"+info+"<br>");
		Object countObject=context.getAttribute("count");
		if(null==countObject) {
			context.setAttribute("count", 1);
		}else {
			String countString=countObject.toString();
			Integer c=Integer.parseInt(countString);
			c++;
			context.setAttribute("count",c);
		}
		out.println("count:"+context.getAttribute("count")+"<br>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
