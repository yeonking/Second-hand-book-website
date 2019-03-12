package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class OrderOperatImpl implements OrderOperat{
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	public int addorder(OrderBean orderb) //添加
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into BOOKORDER values (?,?,?,to_timestamp(?,'yyyy-MM-dd HH24:mi:ss'))";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, orderb.getDbOrderID());
			prestat.setString(2, orderb.getDbMemberID().trim());
			prestat.setFloat(3, orderb.getDbTotalPrice());
			prestat.setString(4, orderb.getDbOrderTime());
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
	
	public int selectmaxorderid()//获取订单号最大数
	{
		int maxorderid=0;
		try{
			conn= Dbconn.getConnection();
			String sql="select max(orderid) from bookorder";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return 0;
			}
			
			if(rs.next())
				maxorderid=Integer.parseInt(rs.getString("max(orderid)").trim());	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}
		
		return maxorderid;
	}
	
	public int deleteorder(String orderid)//删除
	{return 0;}
	public int updateorder(OrderBean orderb)//修改
	{return 0;}
	
	public OrderBean selectorderbyid(String orderid)//查找
	{
		OrderBean orderbean=null;
		try{
			conn= Dbconn.getConnection();
			String sql="select OrderID,MemberID,TotalPrice,to_char(BuyOrder,'yyyy'),to_char(BuyOrder,'mm'),to_char(BuyOrder,'dd'),to_char(BuyOrder,'hh24'),to_char(BuyOrder,'mi'),to_char(BuyOrder,'ss') from bookorder where orderid ='" +orderid+ "'";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return null;
			}
			
			if(rs.next())
			{
				//创建一个UserBean实例，并将数据存入
				orderbean=new OrderBean();
				orderbean.setDbOrderID(rs.getString("OrderID"));
				orderbean.setDbMemberID(rs.getString("MemberID"));
				orderbean.setDbTotalPrice(Float.parseFloat(rs.getString("TotalPrice").trim()));
				String y=rs.getString("to_char(BuyOrder,'yyyy')");
				String m=rs.getString("to_char(BuyOrder,'mm')");
				String d=rs.getString("to_char(BuyOrder,'dd')");
				String h=rs.getString("to_char(BuyOrder,'hh24')");
				String i=rs.getString("to_char(BuyOrder,'mi')");
				String s=rs.getString("to_char(BuyOrder,'ss')");
			    String ttime=y+"-"+m+"-"+d+" "+h+":"+i+":"+s;
				orderbean.setDbOrderTime(ttime);				
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
		return orderbean;
	}
	public List<OrderBean> getallorder()  //获取所有
	{return null;}
	public List<OrderBean> getuserorder(String memid)  //获取所有
	{return null;}
}
