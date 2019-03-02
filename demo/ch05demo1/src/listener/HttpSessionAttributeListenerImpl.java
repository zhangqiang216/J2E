package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class HttpSessionAttributeListenerImpl
 *
 */
@WebListener
public class HttpSessionAttributeListenerImpl implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public HttpSessionAttributeListenerImpl() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent se)  { 
         // TODO Auto-generated method stub
    	System.out.println(se.getName().toString());
    	System.out.println(se.getValue().toString());
    	int vipNum=(Integer)se.getSession().getServletContext().getAttribute("vipNum");
    	se.getSession().getServletContext().setAttribute("vipNum", ++vipNum);
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent se)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent se)  { 
         // TODO Auto-generated method stub
    }
	
}
