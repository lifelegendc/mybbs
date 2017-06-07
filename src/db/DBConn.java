package db;


import java.io.PrintWriter;
import java.sql.*;

import com.mysql.jdbc.PreparedStatement;

public class DBConn {

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public PrintWriter getOut() {
		return out;
	}

	public void setOut(PrintWriter out) {
		this.out = out;
	}


	
	private String driverName = "com.mysql.jdbc.Driver"; // MySQL驱动程序名
	private String userName = "root"; // 数据库用户名
	private String userPwd = "TyBv52531520#"; // 密码
	private String dbName = "bbs"; // 数据库名
	private String url = "jdbc:mysql://localhost/" + dbName + "?user="
			+ userName + "&password=" + userPwd +"&useUnicode=true&characterEncoding=gbk"; // 连接字符串

	private Connection conn = null; // 数据库连接对象
	private PrintWriter out = null;

	// 建立数据库连接
	public Connection connectDB() {
		try {
			Class.forName(driverName).newInstance();
			conn = DriverManager.getConnection(url); // 获得数据库连接
		} catch (Exception e) {
			e.printStackTrace();
			out.print("数据库连接失败!");
		}
		return conn;
	}

	public void closeDB() {
		try {
			conn.close();
		} catch (SQLException SqlE) {
			SqlE.printStackTrace();
			out.print("数据库关闭失败！");
		}

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getDbName() {
		return dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
}