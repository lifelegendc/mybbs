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
		
		Statement stmt;//������
		String sql="";//sql���
		ResultSet rs;//�������
		//ResultSetMetaData rmeta;////�������Ԫ����
		int numRows=0;//ȷ�����ݼ������������ֶ���	
	
	connection=dv.connectDB();
	//�������ݿ�֮�󣬴���������
	stmt = connection.createStatement();
	//sql���

	sql = "select dsc from "+tableName+" where tpcid="+tpcid;
	//����������֮��ͨ����������в�ѯ���������ؽ������
	rs=stmt.executeQuery(sql);
	if(!rs.first())//���ݿ���û��������¼
	{
				return;
	}
	else{
	//���ݿ�����������¼
	
	//���ݽ�����ϣ���ȡ�������Ԫ����
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