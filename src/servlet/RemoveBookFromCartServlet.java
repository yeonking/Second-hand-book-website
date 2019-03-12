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
 * Servlet implementation class RemoveBookFromCartServlet
 */
@WebServlet("/RemoveBookFromCartServlet")
public class RemoveBookFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveBookFromCartServlet() {
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
		
		
		HashMap cart=(HashMap)session.getAttribute("cart");
		String bookid=request.getParameter("bookid").trim();
		
		
		
		cart.remove(bookid);
		session.setAttribute("cart", cart);
		
		dispatcher=request.getRequestDispatcher("checkout.jsp");
		dispatcher.forward(request, response);
		
	}
	public void init() throws ServletException{		
	}
}
