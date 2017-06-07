package db;
import db.DBConn;

import java.io.PrintWriter;
import java.sql.*;

import com.mysql.jdbc.PreparedStatement;

public class insertDsc {
	
	private int dsc=0;
	public insertDsc(String tpcid) throws SQLException{
		
	    DBConn dv=new DBConn();
	    Connection connection;
	    dsc=0;
	
		String tableName="topic";
		
		Statement stmt;//语句对象
		String sql="";//sql语句
		ResultSet rs;//结果集合
		//ResultSetMetaData rmeta;////结果集合元数据
		int numRows=0;//确定数据集的列数，亦字段数	
	
	connection=dv.connectDB();
	//连接数据库之后，创建语句对象
	stmt = connection.createStatement();
	//sql语句

	sql = "select dsc from "+tableName+" where tpcid="+tpcid;
	//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
	rs=stmt.executeQuery(sql);
	if(!rs.first())//数据库中没有这条记录
	{
				return;
	}
	else{
	//数据库中有这条记录
	
	//根据结果集合，读取结果集合元数据
	dsc=rs.getInt("dsc")+1;

	
	sql="UPDATE "+tableName+" SET dsc="+dsc+" WHERE tpcid="+tpcid;
	System.out.println(sql);
	stmt.executeUpdate(sql);
	
	
	
	}
		
	}

	public int getDsc() {
		
		
		return dsc;
		
	}

	
	

}