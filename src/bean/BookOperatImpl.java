package bean;

import java.sql.*;
import java.util.*;

public class BookOperatImpl implements BookOperat{
	
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	
	public int selectmaxbookid()//图书号最大数
	{
		int maxbookid=-1;
		try{
			conn= Dbconn.getConnection();
			String sql="select max(bookid) from book";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return 0;
			}
			
			if(rs.next())
				maxbookid=Integer.parseInt(rs.getString("max(bookid)").trim());	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}
		
		return maxbookid;
	}
	
	public int addbook(BookBean bookb) //添加
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into BOOK values (?,?,?,?,?,?,?,?,?)";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, bookb.getDbBookID());
			prestat.setString(2, bookb.getDbBookimage().trim());
			prestat.setString(3, bookb.getDbBookName());
			prestat.setString(4, bookb.getDbWriter());
			prestat.setString(5, bookb.getDbPublisher());
			prestat.setString(6, bookb.getDbCategory());
			prestat.setString(7, bookb.getDbCourse());
			prestat.setDouble(8, bookb.getDbSellPrice());
			prestat.setString(9, bookb.getDbBrief());
			result=prestat.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}		
		return result;
	}
	public int deletebook(String bookid)//删除
	{
		int result=0;
		try{
			conn=Dbconn.getConnection();
			String sql= "delete from book where BookID='"+bookid+"'";
			prestat=conn.prepareStatement(sql);
			result=prestat.executeUpdate();		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}		
		return result;
	}
	public int updatebook(BookBean bookb)//修改
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String bookid=bookb.getDbBookID().trim();
			String sql="update book set Bookimage=?,BookName=?,Writer=?,Publisher=?,Category=?,Course=?,SellPrice=?,Brief=? where bookid='"+bookid+"'";
			prestat=conn.prepareStatement(sql);	
			prestat.setString(1, bookb.getDbBookimage().trim());
			prestat.setString(2, bookb.getDbBookName());
			prestat.setString(3, bookb.getDbWriter());
			prestat.setString(4, bookb.getDbPublisher());
			prestat.setString(5, bookb.getDbCategory());
			prestat.setString(6, bookb.getDbCourse());
			prestat.setDouble(7, bookb.getDbSellPrice());
			prestat.setString(8, bookb.getDbBrief());
			result=prestat.executeUpdate();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}		
		return result;
	}
	
	public List<BookBean> selectbookbycate(String bookcate)//查找
	{
		//新建书本列表
		List<BookBean> bookalllist=new ArrayList<BookBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select BookID,Bookimage,BookName,Writer,Publisher,Category,Course,SellPrice,Brief from Book where category='"+bookcate+"' order by BookName";//???这里还没写
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();
			
			while(rs.next())
			{
				BookBean book=new BookBean();
				book=new BookBean();
				book.setDbBookID(rs.getString("BookID"));
				book.setDbBookimage(rs.getString("Bookimage").trim());
				book.setDbBookName(rs.getString("BookName"));
				book.setDbWriter(rs.getString("Writer"));
				book.setDbPublisher(rs.getString("Publisher"));
				book.setDbCategory(rs.getString("Category"));
				book.setDbCourse(rs.getString("Course"));
				book.setDbSellPrice(Double.parseDouble(rs.getString("SellPrice")));
				book.setDbBrief(rs.getString("Brief"));
				
				//将赋值好的对象添加到bookalllist列表中
				bookalllist.add(book);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return bookalllist;
	}
	
	public List<BookBean> selectbookbyname(String bookname)//查找
	{
		//新建书本列表
		List<BookBean> bookalllist=new ArrayList<BookBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select BookID,Bookimage,BookName,Writer,Publisher,Category,Course,SellPrice,Brief from Book where bookname like '%"+bookname+"%' order by BookName";
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();
			
			while(rs.next())
			{
				BookBean book=new BookBean();
				book=new BookBean();
				book.setDbBookID(rs.getString("BookID"));
				book.setDbBookimage(rs.getString("Bookimage").trim());
				book.setDbBookName(rs.getString("BookName"));
				book.setDbWriter(rs.getString("Writer"));
				book.setDbPublisher(rs.getString("Publisher"));
				book.setDbCategory(rs.getString("Category"));
				book.setDbCourse(rs.getString("Course"));
				book.setDbSellPrice(Double.parseDouble(rs.getString("SellPrice")));
				book.setDbBrief(rs.getString("Brief"));
				
				//将赋值好的对象添加到bookalllist列表中
				bookalllist.add(book);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return bookalllist;
	}
	
	public List<BookBean> getallbook()  //显示所有书本
	{
		//新建书本列表
		List<BookBean> bookalllist=new ArrayList<BookBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select BookID,Bookimage,BookName,Writer,Publisher,Category,Course,SellPrice,Brief from Book order by Bookid";
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();
			
			while(rs.next())
			{
				BookBean book=new BookBean();
				book=new BookBean();
				book.setDbBookID(rs.getString("BookID").trim());
				book.setDbBookimage(rs.getString("Bookimage").trim());
				book.setDbBookName(rs.getString("BookName").trim());
				book.setDbWriter(rs.getString("Writer").trim());
				book.setDbPublisher(rs.getString("Publisher").trim());
				book.setDbCategory(rs.getString("Category").trim());
				book.setDbCourse(rs.getString("Course"));
				book.setDbSellPrice(Double.parseDouble(rs.getString("SellPrice")));
				book.setDbBrief(rs.getString("Brief"));
				
				//将赋值好的对象添加到bookalllist列表中
				bookalllist.add(book);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return bookalllist;
	}	
	
	//通过id查找
	public BookBean selectbookbyid(String bookid)
	{
		BookBean book=null;
		try{
			conn= Dbconn.getConnection();
			String sql="select BookID,Bookimage,BookName,Writer,Publisher,Category,Course,SellPrice,Brief from Book where bookid='"+bookid+"'";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return null;
			}
			
			if(rs.next())
			{
				//创建一个UserBean实例，并将数据存入
				book=new BookBean();
				book.setDbBookID(rs.getString("BookID"));
				book.setDbBookimage(rs.getString("Bookimage").trim());
				book.setDbBookName(rs.getString("BookName"));
				book.setDbWriter(rs.getString("Writer"));
				book.setDbPublisher(rs.getString("Publisher"));
				book.setDbCategory(rs.getString("Category"));
				book.setDbCourse(rs.getString("Course"));
				book.setDbSellPrice(Double.parseDouble(rs.getString("SellPrice")));
				book.setDbBrief(rs.getString("Brief"));
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}		
		return book;
	}
}
