package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AuthorityFilter
 */
@WebFilter("/AuthorityFilter")
public class AuthorityFilter implements Filter {

    /**
     * Default constructor. 
     */
    public AuthorityFilter() {
        // TODO Auto-generated constructor stub
    	System.out.println("实例化");
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("销毁");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse resp=(HttpServletResponse)response;
		String userName=req.getParameter("userName");
		if(userName==null) {
			HttpSession session=req.getSession();
			Object user=session.getAttribute("user");
			if(user==null) {
				req.getRequestDispatcher("LoginPageServlet").forward(req, resp);
			}else {
				req.getRequestDispatcher("ProductListServlet").forward(req, resp);
				
			}
		}else {
			chain.doFilter(req, resp);
		}
		// pass the request along the filter chain
		//chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("初始化");
	}

}
