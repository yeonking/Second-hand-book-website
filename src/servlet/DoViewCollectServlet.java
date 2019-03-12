package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;

import bean.*;

/**
 * Servlet implementation class DoViewCollectServlet
 */
@WebServlet("/DoViewCollectServlet")
public class DoViewCollectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoViewCollectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void destroy() {
        super.destroy();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session=request.getSession(false);
		RequestDispatcher dispatcher;
		
		//如果session不存在
		if(session==null)
		{
			dispatcher=request.getRequestDispatcher("index.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		if(session.getAttribute("userbean_s")==null)
		{
			String serror="您还未登陆，请先登录";
			session.setAttribute("logerr", serror);
			dispatcher=request.getRequestDispatcher("/account.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		session.setAttribute("mark", 2);
		UserBean userbean = (UserBean)session.getAttribute("userbean_s");
		request.setAttribute("memid",userbean.getDbMemberID().trim());
		request.getRequestDispatcher("product.jsp").forward(request, response);
	}
}

