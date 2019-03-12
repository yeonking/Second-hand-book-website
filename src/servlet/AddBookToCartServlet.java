package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.*;

import java.util.*;

import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;

/**
 * Servlet implementation class AddBookToCartServlet
 */
@WebServlet("/AddBookToCartServlet")
public class AddBookToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookToCartServlet() {
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
			dispatcher=request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
			return;
		}
		
		//从session中取出cart，和要添加的图书对象bookbean
		HashMap cart=(HashMap)session.getAttribute("cart");
		BookOperat bookope = new BookOperatImpl();
		String bookid=request.getParameter("bookid");
		BookBean bookbean = bookope.selectbookbyid(bookid);
		
		//如果购物车不存在，创建购物车
		if(cart==null)
		{
			cart=new HashMap();
			session.setAttribute("cart", cart);
		}
		
		//从购物车对象中根据图书id号取出响应的购书项对象
		
		CartItem cartitem = (CartItem)cart.get(bookbean.getDbBookID().trim());
		if(cartitem!=null)
		{
			cartitem.setQuantity(cartitem.getQuantity()+1);//书本数量+1
		}
		else{  //创建一个新的cartitem对象加到购物车中
			CartItem cartitem1=new CartItem();
			cartitem1.setBookbean(bookbean);
			cartitem1.setQuantity(1);
			cart.put(bookbean.getDbBookID().trim(), cartitem1);
		}
		
		dispatcher=request.getRequestDispatcher("/addcartsuccess.jsp");
		dispatcher.forward(request, response);
		
	}
	public void init() throws ServletException{		
	}

}
