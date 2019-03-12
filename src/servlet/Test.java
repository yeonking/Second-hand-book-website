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
 * Servlet implementation class Test
 */
@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test() {
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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");		
		request.setCharacterEncoding("UTF-8");
		
		String imagename="1";
		
		String path=request.getContextPath();
		String realpath=request.getRealPath("images");
		String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		System.out.println("path"+path);
		System.out.println("request.getRealPath('images')="+realpath);
		System.out.println("basepath"+basepath);
		System.out.println("imagename="+imagename);  //有用吗??
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
				}
				else
				{
					File savedFile=new File(realpath,imagename+".jpg");
					item.write(savedFile);
				}
			}
		}
		catch(Exception e){}
		
		response.sendRedirect("Tsuccess.jsp?imagename="+imagename);
		
	}
	
	public void init() throws ServletException{		
	}

}
