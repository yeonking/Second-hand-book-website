package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.*;

/**
 * Servlet implementation class DoViewBookDetailServlet
 */
@WebServlet("/DoViewBookDetailServlet")
public class DoViewBookDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoViewBookDetailServlet() {
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
		
		String bookid=request.getParameter("bookid");
		BookOperat bookope = new BookOperatImpl();		
		BookBean bookbean = bookope.selectbookbyid(bookid);
		
		HttpSession session=request.getSession();
		session.setAttribute("bookbean_s", bookbean);
		
		//转发显示详细信息页面
		request.getRequestDispatcher("detail.jsp").forward(request, response);		
	}

	public void init() throws ServletException{		
	}
}
