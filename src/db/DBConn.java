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


	
	private String driverName = "com.mysql.jdbc.Driver"; // MySQL����������
	private String userName = "root"; // ���ݿ��û���
	private String userPwd = "TyBv52531520#"; // ����
	private String dbName = "bbs"; // ���ݿ���
	private String url = "jdbc:mysql://localhost/" + dbName + "?user="
			+ userName + "&password=" + userPwd +"&useUnicode=true&characterEncoding=gbk"; // �����ַ���

	private Connection conn = null; // ���ݿ����Ӷ���
	private PrintWriter out = null;

	// �������ݿ�����
	public Connection connectDB() {
		try {
			Class.forName(driverName).newInstance();
			conn = DriverManager.getConnection(url); // ������ݿ�����
		} catch (Exception e) {
			e.printStackTrace();
			out.print("���ݿ�����ʧ��!");
		}
		return conn;
	}

	public void closeDB() {
		try {
			conn.close();
		} catch (SQLException SqlE) {
			SqlE.printStackTrace();
			out.print("���ݿ�ر�ʧ�ܣ�");
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