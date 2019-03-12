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
import java.util.*;

/**
 * Servlet implementation class DoSelectUserServlet
 */
@WebServlet("/DoSelectUserServlet")
public class DoSelectUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoSelectUserServlet() {
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
		
		String memid=request.getParameter("username");
		String mempwd=request.getParameter("pwd_pwd");
		UserOperat userope = new UserOperatImpl();
		UserBean userbean = userope.selectuserbyid(memid);
		
		//session.setAttribute("logerr", null);
		if(userbean==null)
		{
			String serror="用户不存在，请重新登录";
			session.setAttribute("logerr", serror);
			dispatcher=request.getRequestDispatcher("/account.jsp");
			dispatcher.forward(request, response);
		} else if(!(memid.equals(userbean.getDbMemberID()) && mempwd.equals(userbean.getDbMemberPassword())))
		{
			
			String serror="密码有误，请重新登录";
			session.setAttribute("logerr", serror);
			dispatcher=request.getRequestDispatcher("/account.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			session.setAttribute("logerr", null);
			session.setAttribute("userbean_s", userbean);
			//转向个人信息页面或后台管理页面
			//request.setAttribute("userbean", userbean);
			//request.getRequestDispatcher("information.jsp").forward(request, response);
			if(userbean.getDbIsManage()==0)
			{
				dispatcher=request.getRequestDispatcher("/information.jsp");
				dispatcher.forward(request, response);			
			}
			else
			{
				dispatcher=request.getRequestDispatcher("/management.jsp");
				dispatcher.forward(request, response);			
			}
		}	
	}
		
	public void init() throws ServletException{		
	}
}
