package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.*;

import java.text.*;
import java.util.*;

/**
 * Servlet implementation class DoAddCollectServlet
 */
@WebServlet("/DoAddCollectServlet")
public class DoAddCollectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoAddCollectServlet() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");		
		request.setCharacterEncoding("UTF-8");
		
		UserBean userbean =new UserBean();
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher;
		
		if(session.getAttribute("userbean_s")==null)
		{
			String serror="您还未登陆，请先登录再结算";
			session.setAttribute("logerr", serror);
			dispatcher=request.getRequestDispatcher("/account.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		userbean=(UserBean)session.getAttribute("userbean_s");
		//获取表单数据
		String memid=userbean.getDbMemberID().trim();   
		String bookid=request.getParameter("bookid").trim();      
		
		
		//将数据添加进封装的类
		CollectionBean collect=new CollectionBean();
		collect.setDbBookID(bookid);;
		collect.setDbMemberID(memid);
		
		
		//调用数据库操作
		CollectionOperat cloperat=new CollectionOperatImpl();
		int n=0;
		n = cloperat.addcollectifon(collect);
		
		if(n>0)
			response.sendRedirect("addcollectresult.jsp");
		else
			response.sendRedirect("Terror.jsp");
	}
	
	public void init() throws ServletException{		
	}
}
