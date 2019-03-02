package servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.AdminBean;
import bean.CakeBean;
import dao.CakeDao;

/**
 * Servlet implementation class OperateCakeServlet
 */
@WebServlet("/OperateCakeServlet")
public class OperateCakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperateCakeServlet() {
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
		CakeDao dao=new CakeDao();
		int remark=Integer.parseInt(request.getParameter("remark"));
		if(remark==1) {
			String name = null,url=null,type=null,style=null,color=null,shape=null;
			int price=0,dis=0;
			double size=0;
			DiskFileItemFactory factory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				List<FileItem> list = upload.parseRequest(request);
				for(FileItem item:list) {
					
					if(item.isFormField()) {//文本域
						String formname=item.getFieldName();
						if(formname.equals("name")) {
							name=item.getString("UTF-8");
						}else if(formname.equals("price")) {
							price=Integer.parseInt(item.getString());
							
						}else if(formname.equals("discount")) {
							dis=Integer.parseInt(item.getString());
							
						}else if(formname.equals("type")) {
							type=item.getString("UTF-8");
							
						}else if(formname.equals("style")) {
							style=item.getString("UTF-8");
							
						}else if(formname.equals("size")) {
							size=Double.parseDouble(item.getString());
							
						}else if(formname.equals("color")) {
							color=item.getString("UTF-8");
							
						}else if(formname.equals("shape")) {
							shape=item.getString("UTF-8");
							dao.addCake(name, url, type, dis, price, style, size, color, shape);
							request.getRequestDispatcher("/CakeListServlet").forward(request, response);
						
						}
						
					}else {//文件
						String pathName = item.getName();
						String fileName = pathName.substring(pathName.lastIndexOf("\\")+1);
						String serverPath = getServletContext().getRealPath("/");
						item.write(new File(serverPath+"\\images\\",fileName));
						url="images/"+fileName;
	
					}
				}
				
				
				
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else if(remark==2){
			int id=Integer.parseInt(request.getParameter("id"));
			dao.deleteCakeById(id);
			request.getRequestDispatcher("/CakeListServlet").forward(request, response);
			
		}else if(remark==3) {
			int id=Integer.parseInt(request.getParameter("id"));
			
			getFrom(id,dao,request,response);
			
			
		}else if(remark==4) {
			int id=Integer.parseInt(request.getParameter("id"));
			CakeBean cake=dao.getCakeById(id);
			List<CakeBean> list=new ArrayList<CakeBean>();
			list.add(cake);
			request.setAttribute("cakelist", list);
			//Boolean a=true;
			//request.setAttribute("true", a);
			request.getRequestDispatcher("/admin/cake_list.jsp").forward(request, response);
			
		}
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected void getFrom(int id,CakeDao dao,HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String name = null,url=null,type=null,style=null,color=null,shape=null;
		int price=0,dis=0;
		double size=0;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			List<FileItem> list = upload.parseRequest(request);
			for(FileItem item:list) {
				
				if(item.isFormField()) {//文本域
					String formname=item.getFieldName();
					if(formname.equals("name")) {
						name=item.getString("UTF-8");
					}else if(formname.equals("price")) {
						price=Integer.parseInt(item.getString());
						
					}else if(formname.equals("discount")) {
						dis=Integer.parseInt(item.getString());
						
					}else if(formname.equals("type")) {
						type=item.getString("UTF-8");
						
					}else if(formname.equals("style")) {
						style=item.getString("UTF-8");
						
					}else if(formname.equals("size")) {
						size=Double.parseDouble(item.getString());
						
					}else if(formname.equals("color")) {
						color=item.getString("UTF-8");
						
					}else if(formname.equals("shape")) {
						shape=item.getString("UTF-8");
						dao.updateCakeById(id, name, url, type, dis, price, style, size, color, shape);
						request.getRequestDispatcher("/CakeListServlet").forward(request, response);
					
					}
					
				}else {//文件
					String pathName = item.getName();
					String fileName = pathName.substring(pathName.lastIndexOf("\\")+1);
					String serverPath = getServletContext().getRealPath("/");
					item.write(new File(serverPath+"\\images\\",fileName));
					url="images/"+fileName;

				}
			}
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
