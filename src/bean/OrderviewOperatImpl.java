package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderviewOperatImpl {
	
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	
	public List<OrderviewBean> getallorderview()
	{
		//新建用户列表
				List<OrderviewBean> orderviewalllist=new ArrayList<OrderviewBean>();
				
				//访问数据库获取数据
				try{
					conn = Dbconn.getConnection();
					String sql="select orderid,memberid,membername,tel,address,total,to_char(ordertime,'yyyy'),to_char(ordertime,'mm'),to_char(ordertime,'dd'),to_char(ordertime,'hh24'),to_char(ordertime,'mi'),to_char(ordertime,'ss') from orderview order by membername,memberid,ordertime DESC";//???这里还没写
					prestat = conn.prepareStatement(sql);
					rs =prestat.executeQuery();
					
					while(rs.next())
					{
						OrderviewBean orderview=new OrderviewBean();
						orderview=new OrderviewBean();
						orderview.setDborderid(rs.getString("orderid"));
						orderview.setDbmemberid(rs.getString("memberid"));
						orderview.setDbmembername(rs.getString("membername"));
						orderview.setDbtel(rs.getString("tel"));
						orderview.setDbaddress(rs.getString("address"));
						float ftotal=Float.parseFloat(rs.getString("total").trim());
						orderview.setDbtotal(ftotal);
						
						String y=rs.getString("to_char(ordertime,'yyyy')");
						String m=rs.getString("to_char(ordertime,'mm')");
						String d=rs.getString("to_char(ordertime,'dd')");
						String h=rs.getString("to_char(ordertime,'hh24')");
						String i=rs.getString("to_char(ordertime,'mi')");
						String s=rs.getString("to_char(ordertime,'ss')");				
						String stime=y+"-"+m+"-"+d+" "+h+":"+i+":"+s;
						orderview.setDbordertime(stime);
	
						//将赋值好的对象添加到orderviewalllist列表中
						orderviewalllist.add(orderview);
					}
				}catch(SQLException exception){
					exception.printStackTrace();
				}
				
				finally{
					Dbconn.closeResultSet(rs);
					Dbconn.closeStatement(prestat);
					Dbconn.closeConnection(conn);
				}	
				
				return orderviewalllist;			
	}
	public List<OrderviewBean> getorderviewbymemid(String memid)
	{
		List<OrderviewBean> orderviewuserlist=new ArrayList<OrderviewBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select orderid,memberid,membername,tel,address,total,to_char(ordertime,'yyyy'),to_char(ordertime,'mm'),to_char(ordertime,'dd'),to_char(ordertime,'hh24'),to_char(ordertime,'mi'),to_char(ordertime,'ss') from orderview where memberid='"+memid+"' order by ordertime DESC";
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();
			
			while(rs.next())
			{
				OrderviewBean orderview=new OrderviewBean();
				orderview=new OrderviewBean();
				orderview.setDborderid(rs.getString("orderid"));
				orderview.setDbmemberid(rs.getString("memberid"));
				orderview.setDbmembername(rs.getString("membername"));
				orderview.setDbtel(rs.getString("tel"));
				orderview.setDbaddress(rs.getString("address"));
				float ftotal=Float.parseFloat(rs.getString("total").trim());
				orderview.setDbtotal(ftotal);
				
				String y=rs.getString("to_char(ordertime,'yyyy')");
				String m=rs.getString("to_char(ordertime,'mm')");
				String d=rs.getString("to_char(ordertime,'dd')");
				String h=rs.getString("to_char(ordertime,'hh24')");
				String i=rs.getString("to_char(ordertime,'mi')");
				String s=rs.getString("to_char(ordertime,'ss')");				
				String stime=y+"-"+m+"-"+d+" "+h+":"+i+":"+s;
				orderview.setDbordertime(stime);

				//将赋值好的对象添加到orderviewuserlist列表中
				orderviewuserlist.add(orderview);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return orderviewuserlist;
	}
}
