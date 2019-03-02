package listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class OnlineListener
 *
 */
@WebListener
public class OnlineListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public OnlineListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 
        
    	ServletContext context = se.getSession().getServletContext();
        
        Integer count = (Integer) context.getAttribute("peopleOnline");
        if (count == null) {
            count = 1;
        } else {
            count++;
        }
        context.setAttribute("peopleOnline", count);
     
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	ServletContext context = se.getSession().getServletContext();
        Integer count = (Integer) context.getAttribute("peopleOnline");
        count--;
        context.setAttribute("peopleOnline", count);
    }
    
	
}
