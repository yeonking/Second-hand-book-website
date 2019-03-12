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



/**
 * Servlet implementation class DoAddUserServlet
 */
@WebServlet("/DoAddUserServlet")
public class DoAddUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoAddUserServlet() {
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
		
		HttpSession session=request.getSession(false);
		RequestDispatcher dispatcher;
		
		//如果session不存在
		if(session==null)
		{
			dispatcher=request.getRequestDispatcher("/index.jsp");//??路径对吗
			dispatcher.forward(request, response);//干啥用的??
			return;
		}
		UserBean userbeans=(UserBean)session.getAttribute("userbean_s");
		
		//获取表单数据
		String susername=request.getParameter("username");   //账号
		String sname=request.getParameter("name");         //姓名
		String srdo_sex=request.getParameter("rdo_sex");        //性别
		String ssel_year=request.getParameter("sel_year");      //年
		String ssel_month=request.getParameter("sel_month");      //月
		String ssel_date=request.getParameter("sel_date");      //日
		String saddress=request.getParameter("address");        //地址
		String sphone=request.getParameter("phone");        //电话
		String semail=request.getParameter("email");      //邮箱
		String spwd_pwd=request.getParameter("pwd_pwd");//密码
		String sisma=request.getParameter("isma");
		int iisma=Integer.parseInt(sisma);//是否管理员
		String spwd_pwda=request.getParameter("pwd_pwda");//重输密码
		
		//将数据添加进封装的类
		UserBean userbean=new UserBean();
		userbean.setDbMemberID(susername);
		userbean.setDbMemberName(sname);
		userbean.setDbSex(srdo_sex);
		userbean.setDbYear(ssel_year);
		userbean.setDbMonth(ssel_month);
		userbean.setDbDate(ssel_date);
		userbean.setDbBirth(ssel_year, ssel_month, ssel_date);
		userbean.setDbAdd(saddress);
		userbean.setDbTel(sphone);
		userbean.setDbEmail(semail);
		userbean.setDbMemberPassword(spwd_pwd);
		userbean.setDbIsManage(iisma);
		
		//调用数据库操作
		UserOperat useroperat=new UserOperatImpl();
		int n=0;
		if(userbeans==null)
		{
			n = useroperat.adduser(userbean);
		}else if(userbeans.getDbIsManage()==0){
			n = useroperat.adduser(userbean);
		}else
		{
			n = useroperat.addma(userbean);
		}
		
		
		if(n>0)
			response.sendRedirect("succeed.jsp");
		else
			response.sendRedirect("fail.jsp");
	}
	
	public void init() throws ServletException{		
	}

}
