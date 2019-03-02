package listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class HttpSessionListenerImpl
 *
 */
@WebListener
public class HttpSessionListenerImpl implements HttpSessionListener {

    public HttpSessionListenerImpl() {
        // TODO Auto-generated constructor stub
    	
    }

	
    public void sessionCreated(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	ServletContext application=se.getSession().getServletContext();
    	int onlineNum=(Integer)application.getAttribute("onlineNum");
    	onlineNum++;
    	application.setAttribute("onlineNum", onlineNum);
    	
    	
  
    }

	
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	ServletContext application=se.getSession().getServletContext();
    	int onlineNum=(Integer)application.getAttribute("onlineNum");
    	onlineNum--;
    	application.setAttribute("onlineNum", onlineNum);
    	int vipNum=(Integer)application.getAttribute("vipNum");
    	HttpSession session=se.getSession();
    	if(!session.getAttribute("userName").equals("")) {
    		vipNum--;
        	application.setAttribute("vipNum",vipNum);
    	}
    	
    }
	
}
