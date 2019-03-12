package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BuybookOperatImpl implements BuybookOperat{
	
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	
	public int addbuybook(BuybookBean buybookb) //添加用户
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into buybook values (?,?,?,?,?,?)";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, buybookb.getDbBuyOrderID());
			prestat.setString(2, buybookb.getDbBookID());
			prestat.setString(3, buybookb.getDbBookName());
			prestat.setDouble(4, buybookb.getDbPrice());
			prestat.setInt(5, buybookb.getDbAmounts());
			prestat.setString(6, buybookb.getDbimage());
			
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
	public int deletebuybookbyorder(String orderid)//删除
	{return 0;}
	public List<BuybookBean> getallbuyorderid(String orderid)  //获取所有用户
	{
		//新建书本列表
		List<BuybookBean> buybookalllist=new ArrayList<BuybookBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select OrderID,BookID,BookName,SellPrice,Amounts,Image from buybook where OrderID='"+orderid+"'";//???这里还没写
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();
			
			while(rs.next())
			{
				BuybookBean buybook=new BuybookBean();
				buybook=new BuybookBean();
				buybook.setDbBuyOrderID(rs.getString("OrderID"));
				buybook.setDbBookID(rs.getString("BookID"));
				buybook.setDbBookName(rs.getString("BookName"));
				buybook.setDbPrice(rs.getDouble("SellPrice"));
				buybook.setDbAmounts(rs.getInt("Amounts"));
				buybook.setDbimage(rs.getString("Image").trim());
				
				
				//将赋值好的对象添加到buybookalllist列表中
				buybookalllist.add(buybook);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return buybookalllist;
	}

}
