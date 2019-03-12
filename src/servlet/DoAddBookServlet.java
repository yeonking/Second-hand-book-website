package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.*;
import java.sql.*;
import java.util.*;
import java.io.*;
import org.apache.commons.fileupload.*;


/**
 * Servlet implementation class DoAddBookServlet
 */
@WebServlet("/DoAddBookServlet")
public class DoAddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoAddBookServlet() {
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
		
		BookBean bookbean =new BookBean();		
		BookOperat bookoperat=new BookOperatImpl();

		String imagename="";
		String sbookname="";
		String sbrief="";
		String scategory="";
		String scourse="";
		String spublisher="";
		String sprice="";
		double dprice=-1;
		String swriter="";	
		
		//以下为图片上传实现
		String path=request.getContextPath();
		String realpath=request.getRealPath("images");
		String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		System.out.println("path"+path);
		System.out.println("request.getRealPath('images')="+realpath);
		System.out.println("basepath"+basepath);
		System.out.println("imagename="+imagename);  
		DiskFileUpload fu=new DiskFileUpload();
		fu.setSizeMax(4096*4096);
		fu.setRepositoryPath(realpath);
		/*接收文件，重新以图片名命名，存到、images下*/
		try{
			List fileItems=fu.parseRequest(request);
			Iterator iter=fileItems.iterator();
			while(iter.hasNext())
			{
				FileItem item=(FileItem)iter.next();
				if(item.isFormField())
				{
					if (item.getFieldName().equals("imagename")) imagename = item.getString("utf-8");
					if (item.getFieldName().equals("bookname"))  sbookname= item.getString("utf-8");
					if (item.getFieldName().equals("brief"))  sbrief= item.getString("utf-8");
					if (item.getFieldName().equals("course"))  scourse= item.getString("utf-8");
					if (item.getFieldName().equals("category"))  scategory= item.getString("utf-8");
					if (item.getFieldName().equals("writer"))  swriter= item.getString("utf-8");
					if (item.getFieldName().equals("publisher"))  spublisher= item.getString("utf-8");
					if (item.getFieldName().equals("price")){
						sprice= item.getString("utf-8");
						dprice=Double.parseDouble(sprice);
					}
				}
				else
				{
					File savedFile=new File(realpath,imagename+".jpg");
					item.write(savedFile);
				}
			}
		}
		catch(Exception e){}		
		
		
		int maxbookid= bookoperat.selectmaxbookid();
		int bookid;
		if(maxbookid<100){
			bookid=100;
		}else{
			bookid=maxbookid+1;
		}
		bookbean.setDbBookID(String.valueOf(bookid));		
		bookbean.setDbBookimage(imagename);
		bookbean.setDbBookName(sbookname);
		bookbean.setDbBrief(sbrief);
		bookbean.setDbCategory(scategory);
		bookbean.setDbCourse(scourse);
		bookbean.setDbPublisher(spublisher);
		bookbean.setDbSellPrice(dprice);
		bookbean.setDbWriter(swriter);
		
		int n = bookoperat.addbook(bookbean);

		if(n>0)
			response.sendRedirect("manageproduct.jsp");
		else
			response.sendRedirect("Terror.jsp");
	}
	
	public void init() throws ServletException{		
	}


}
