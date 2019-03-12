package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.*;

/**
 * Servlet implementation class DoDeleteBookServlet
 */
@WebServlet("/DoDeleteBookServlet")
public class DoDeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDeleteBookServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		
		String bookid=request.getParameter("bookid");
		BookOperat bookope = new BookOperatImpl();
		int n=bookope.deletebook(bookid);
		if(n>0)
			response.sendRedirect("manageproduct.jsp");
		else
			response.sendRedirect("Terror.jsp");	
	}
	
	public void init() throws ServletException{		
	}

}
