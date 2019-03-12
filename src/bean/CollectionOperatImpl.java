package bean;

import java.sql.*;
import java.util.*;

public class CollectionOperatImpl implements CollectionOperat{
	
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	
	public int addcollectifon(CollectionBean collectionb) //添加
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into FAVOURITE values (?,?)";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, collectionb.getDbBookID());
			prestat.setString(2, collectionb.getDbMemberID());
			
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
	public int deletecollection(String bookid,String memid)//删除
	{
		int result=0;
		try{
			conn=Dbconn.getConnection();
			String sql= "delete from FAVOURITE where BookID='"+bookid+"' and memberid='"+memid+"'";
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
	
	public List<BookBean> selectcollect(String memid)//查找
	{
		//新建书本列表
			List<BookBean> collectlist=new ArrayList<BookBean>();
				
				//访问数据库获取数据
				try{
					conn = Dbconn.getConnection();
					String sql="select book.BookID,Bookimage,BookName,Writer,Publisher,Category,Course,SellPrice,Brief from Book,favourite where favourite.memberid='"+memid+"' and favourite.bookid=book.bookid order by BookName";//???这里还没写
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
						collectlist.add(book);
					}
				}catch(SQLException exception){
					exception.printStackTrace();
				}
				
				finally{
					Dbconn.closeResultSet(rs);
					Dbconn.closeStatement(prestat);
					Dbconn.closeConnection(conn);
				}	
				
				return collectlist;
	}
	
	public CollectionBean selectcollectbyid(String bookid,String memid)
	{
		CollectionBean collect=null;
		try{
			conn= Dbconn.getConnection();
			String sql="select MemberID,bookid from FAVOURITE where BookID='"+bookid+"' and memberid='"+memid+"'";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return null;
			}
			
			if(rs.next())
			{
				//创建一个UserBean实例，并将数据存入
				collect=new CollectionBean();
				collect.setDbMemberID(rs.getString("MemberID").trim());
				collect.setDbBookID(rs.getString("bookid").trim());
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
		return collect;
	}
}
