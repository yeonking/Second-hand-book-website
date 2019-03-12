package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.*;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import java.util.*;

/**
 * Servlet implementation class DoUpdateUserServlet
 */
@WebServlet("/DoUpdateUserServlet")
public class DoUpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUpdateUserServlet() {
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
		
		response.setContentType("text/html");//???不懂	
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session=request.getSession(false);
		RequestDispatcher dispatcher;
		
		//如果session不存在
		if(session==null)
		{
			dispatcher=request.getRequestDispatcher("/index.jsp");//??路径对吗
			dispatcher.forward(request, response);//干啥用的??
			return;
		}
		//获取表单数据
		String susername=request.getParameter("username").trim();   //账号
		String sname=request.getParameter("name").trim();         //姓名
		String srdo_sex=request.getParameter("rdo_sex").trim();        //性别
		String ssel_year=request.getParameter("sel_y").trim();      //年
		String ssel_month=request.getParameter("sel_m").trim();      //月
		String ssel_date=request.getParameter("sel_d").trim();      //日
		String saddress=request.getParameter("address").trim();        //地址
		String sphone=request.getParameter("phone").trim();        //电话
		String semail=request.getParameter("email").trim();      //邮箱
		String spwd_pwd=request.getParameter("pwd_pwd").trim();//密码
		String spwd_pwda=request.getParameter("pwd_pwda").trim();
		
		//将数据添加进封装的类
		UserBean userbeanu=new UserBean();
		userbeanu.setDbMemberID(susername);
		userbeanu.setDbMemberName(sname);
		userbeanu.setDbSex(srdo_sex);
		userbeanu.setDbYear(ssel_year);
		userbeanu.setDbMonth(ssel_month);
		userbeanu.setDbDate(ssel_date);
		userbeanu.setDbBirth(ssel_year, ssel_month, ssel_date);
		userbeanu.setDbAdd(saddress);
		userbeanu.setDbTel(sphone);
		userbeanu.setDbEmail(semail);
		userbeanu.setDbMemberPassword(spwd_pwd);
		userbeanu.setDbIsManage(0);
		
		//调用数据库操作
		UserOperat useroperat=new UserOperatImpl();
		int n = useroperat.updateuser(userbeanu);
		if(n>0)
		{
			session.setAttribute("userbean_s", null);
			dispatcher=request.getRequestDispatcher("/revisesucceed.jsp");
			dispatcher.forward(request, response);
			//response.sendRedirect("revisesucceed.jsp");
		}
		else
		{
			response.sendRedirect("revisefail.jsp");
		}
	}
	
	public void init() throws ServletException{		
	}

}
