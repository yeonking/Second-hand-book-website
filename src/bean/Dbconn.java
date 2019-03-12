package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dbconn {
	public static Connection getConnection() {
		Connection dbConnection = null;
		try {
			//加载数据库驱动类
		  	Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
		  	String url="jdbc:oracle:thin:@localhost:1521:orcl";
		  	//根据数据库参数取得一个数据库连接
		  	dbConnection = DriverManager.getConnection(url,"sysman","AAAaaa123");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dbConnection;
	}

	// 关闭连接
	public static void closeConnection(Connection dbConnection) {
		try {
			if (dbConnection != null && (!dbConnection.isClosed())) {
				dbConnection.close();
			}
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		}
	}

	// 关闭结果集
	public static void closeResultSet(ResultSet res) {
		try {
			if (res != null) {
				res.close();
				res = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//关闭
	public static void closeStatement(PreparedStatement pStatement){
		try{
			if(pStatement!=null){
				pStatement.close();
				pStatement=null;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
