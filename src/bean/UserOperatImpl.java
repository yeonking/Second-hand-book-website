package bean;

import java.sql.*;
import java.util.*;
import java.text.*;

public class UserOperatImpl implements UserOperat{
	private Connection conn=null;
	private PreparedStatement prestat = null;
	private ResultSet rs = null;
	
	public int addma(UserBean userb) //添加管理员
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into MEMBER values (?,?,'',to_date('2000-01-01','yyyy-mm-dd'),'','','',?,?)";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, userb.getDbMemberID());
			prestat.setString(2, userb.getDbMemberName());
			prestat.setString(3, userb.getDbMemberPassword());
			prestat.setInt(4, userb.getDbIsManage());
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
	
	//添加用户
	public int adduser(UserBean userb) 
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String sql="insert into MEMBER values (?,?,?,TO_DATE(?,'yyyy-mm-dd'),?,?,?,?,?)";
			prestat=conn.prepareStatement(sql);
			prestat.setString(1, userb.getDbMemberID());
			prestat.setString(2, userb.getDbMemberName());
			prestat.setString(3, userb.getDbSex());
			prestat.setString(4, userb.getDbBirth());
			prestat.setString(5, userb.getDbAdd());
			prestat.setString(6, userb.getDbTel());
			prestat.setString(7, userb.getDbEmail());
			prestat.setString(8, userb.getDbMemberPassword());
			prestat.setInt(9, userb.getDbIsManage());
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
	
	//删除
	public int deleteuser(String memid)
	{
		int result=0;
		try{
			conn=Dbconn.getConnection();
			String sql= "delete from member where MemberID='"+memid+"'";
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
	
	//修改
	public int updateuser(UserBean userb)//修改
	{
		int result=0;
		try{
			conn= Dbconn.getConnection();
			String memid=userb.getDbMemberID();
			String sql="update member set MemberName=?,sex=?,birth=to_date(?,'yyyy-mm-dd'),address=?,tel=?,email=?,memberpassword=? where memberid='"+memid+"'";
			prestat=conn.prepareStatement(sql);	
			prestat.setString(1, userb.getDbMemberName());
			prestat.setString(2, userb.getDbSex());
			prestat.setString(3, userb.getDbBirth());
			prestat.setString(4, userb.getDbAdd());
			prestat.setString(5, userb.getDbTel());
			prestat.setString(6, userb.getDbEmail());
			prestat.setString(7, userb.getDbMemberPassword());
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
	
	//通过id查找
	public UserBean selectuserbyid(String memid)
	{
		UserBean userbean=null;
		try{
			conn= Dbconn.getConnection();
			String sql="select MemberID,MemberName,Sex,to_char(birth,'yyyy'),to_char(birth,'mm'),to_char(birth,'dd'),Address,tel,email,memberpassword,IsManage from member where MemberID ='" +memid+ "'";
			prestat=conn.prepareStatement(sql);
			rs=prestat.executeQuery();
			
			if(rs==null)
			{
				return null;
			}
			
			if(rs.next())
			{
				//创建一个UserBean实例，并将数据存入
				userbean=new UserBean();
				userbean.setDbMemberID(rs.getString("MemberID").trim());
				userbean.setDbMemberName(rs.getString("MemberName").trim());
				userbean.setDbSex(rs.getString("Sex"));
				String y=rs.getString("to_char(birth,'yyyy')");
				String m=rs.getString("to_char(birth,'mm')");
				String d=rs.getString("to_char(birth,'dd')");
				userbean.setDbYear(y);
				userbean.setDbMonth(m);
				userbean.setDbDate(d);
				userbean.setDbBirth(y,m,d);
				userbean.setDbAdd(rs.getString("Address"));
				userbean.setDbTel(rs.getString("Tel"));
				userbean.setDbEmail(rs.getString("Email"));
				userbean.setDbMemberPassword(rs.getString("MemberPassword").trim());
				userbean.setDbIsManage(Integer.parseInt(rs.getString("IsManage").trim()));
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
		return userbean;
	}
	
	//获取所有
	public List<UserBean> getalluser()
	{
		//新建用户列表
		List<UserBean> useralllist=new ArrayList<UserBean>();
		
		//访问数据库获取数据
		try{
			conn = Dbconn.getConnection();
			String sql="select MemberID,MemberName,Sex,to_char(birth,'yyyy'),to_char(birth,'mm'),to_char(birth,'dd'),Address,tel,email,memberpassword,IsManage from member order by MemberID";//???这里还没写
			prestat = conn.prepareStatement(sql);
			rs =prestat.executeQuery();//??书上：ResultSet rs =prestat.executeQuery();
			
			while(rs.next())
			{
				UserBean user=new UserBean();
				user=new UserBean();
				user.setDbMemberID(rs.getString("MemberID"));
				user.setDbMemberName(rs.getString("MemberName"));
				user.setDbSex(rs.getString("Sex"));
				String y=rs.getString("to_char(birth,'yyyy')");
				String m=rs.getString("to_char(birth,'mm')");
				String d=rs.getString("to_char(birth,'dd')");
				user.setDbYear(y);
				user.setDbMonth(m);
				user.setDbDate(d);
				user.setDbBirth(y,m,d);
				user.setDbAdd(rs.getString("Address"));
				user.setDbTel(rs.getString("Tel"));
				user.setDbEmail(rs.getString("Email"));
				user.setDbMemberPassword(rs.getString("MemberPassword"));
				user.setDbIsManage(rs.getInt("IsManage"));
				
				//将赋值好的对象添加到useralllist列表中
				useralllist.add(user);
			}
		}catch(SQLException exception){
			exception.printStackTrace();
		}
		
		finally{
			Dbconn.closeResultSet(rs);
			Dbconn.closeStatement(prestat);
			Dbconn.closeConnection(conn);
		}	
		
		return useralllist;
	}
}
