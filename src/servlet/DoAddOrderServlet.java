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
 * Servlet implementation class DoAddOrderServlet
 */
@WebServlet("/DoAddOrderServlet")
public class DoAddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoAddOrderServlet() {
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
		
		OrderBean orderbean =new OrderBean();
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
		
		OrderOperat orderoperat=new OrderOperatImpl();
		int maxorderid= orderoperat.selectmaxorderid();
		int orderid;
		if(maxorderid<201600){
			orderid=201600;
		}else{
			orderid=maxorderid+1;
		}
		orderbean.setDbOrderID(String.valueOf(orderid));
		
		UserBean userbean = (UserBean)session.getAttribute("userbean_s");
		orderbean.setDbMemberID(userbean.getDbMemberID());
		
		double totprice=(Double)session.getAttribute("total");
		orderbean.setDbTotalPrice((float)totprice);
		
		Date date= new Date();//创建一个时间对象，获取到当前的时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置时间显示格式
		String str = sdf.format(date);
		orderbean.setDbOrderTime(str);
		
		int n = orderoperat.addorder(orderbean);
		
		//写入buybook表的数据
		Map cart = (Map)session.getAttribute("cart");
		Set cartitems=cart.keySet();//获取购物车中所有cartitem项的书号集合
		Object[] bookid = cartitems.toArray();//将书号转为bookid数组
		BookBean book;
		CartItem cartitem;
		BuybookBean buybookbean=new BuybookBean();
		
		int i=0,m=0;
		while(i<bookid.length){
			cartitem =(CartItem)cart.get((String)bookid[i]);
			book=cartitem.getBookbean();
			buybookbean.setDbBuyOrderID(String.valueOf(orderid));
			buybookbean.setDbBookID(book.getDbBookID());
			buybookbean.setDbBookName(book.getDbBookName());
			buybookbean.setDbPrice(book.getDbSellPrice());
			buybookbean.setDbAmounts(cartitem.getQuantity());
			buybookbean.setDbimage(book.getDbBookimage());
			i++;
			// 调用数据库
			BuybookOperat buybookoperat=new BuybookOperatImpl();
			 m = buybookoperat.addbuybook(buybookbean);
		}

		if(n>0 && m>0)
		{
			session.setAttribute("cart", null);
			session.setAttribute("total", null);
			request.setAttribute("orderid", String.valueOf(orderid));
			request.getRequestDispatcher("preorder.jsp").forward(request, response);
		}
		else
		{
			String serror="下单失败，请重新下单";
			session.setAttribute("carterr", serror);
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}
	}
}
