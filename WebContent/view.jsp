<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="db.DBConn" %>
    <%@ page import="java.sql.*" %>
   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body{
	text-align:center;
	padding:0;
	margin:30px 0 0 0;
	background-image: url(img/bckground4.jpg);
	background-color: #FFFFCC;
	margin-top: 0px;
	}
</style>
<title>�鿴����</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link rel="stylesheet" type="text/css" href="styles.css">
<style type="text/css">
<!--
#Layer1 {
	position:relative;
	width:99px;
	height:21px;
	z-index:1;
	left: 11%;
	top: 0%;
}
-->
</style>
</head>
<body>
<%! int i = 0;
    DBConn dv=new DBConn();
   
    Connection connection;
    
	String title="";
	String content="";
	int tpcid=0;
	String tableName="topic";
	
	Statement stmt;//������
	String sql="";//sql���
	ResultSet rs;//�������
	ResultSetMetaData rmeta;////�������Ԫ����
	int numRows=0;//ȷ�����ݼ������������ֶ���	
	int numColumns=0;//ȷ�����ݼ������������ֶ���	
%>

<%
connection=dv.connectDB();
//�������ݿ�֮�󣬴���������
stmt = connection.createStatement();
//sql���

sql = "select title,content,date,user,dsc,tpcid,viewtimes from "+tableName+" order by date desc";
//����������֮��ͨ����������в�ѯ���������ؽ������
rs=stmt.executeQuery(sql);
if(!rs.first())//���ݿ���û��������¼
{
	out.println("�Բ���Ŀǰ����Ϊ��");
	
	return;
}
else{
//���ݿ�����������¼
System.out.println("���ݿ��������Ƶİ����ؼ���'"+title+"'�ļ�¼��\n");
//���ݽ�����ϣ���ȡ�������Ԫ����
rs.last();
numRows=rs.getRow();
//System.out.println(numRows);
//ȷ�����ݼ������������ֶ���

//���ÿһ����¼
rs.beforeFirst();
rmeta = rs.getMetaData();
//ȷ�����ݼ������������ֶ���
numColumns=rmeta.getColumnCount();

}
%>
<div align = "center">
<jsp:include page="Top.jsp"></jsp:include>
</div>
<!--��������ʼ-->
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="79%">
<tbody>
  <tr valign="top">
    <td width="99%">
	  <div id="jive-message-holder">
      <div class="jive-message-list">
      <div class="jive-table">
      <div class="jive-messagebox">
        <table summary="Message" border="0" cellpadding="0"
											cellspacing="0" width="100%">
          <tbody>
            <tr id="jive-message-780144" class="jive-odd" valign="top">
              <td class="jive-first" width="1%"><!-- ������Ϣ��table -->
                <table border="0" cellpadding="0" cellspacing="0" width="150">
                  <tbody>
                    <tr>
                      <td>
					    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                          <tbody>
                            <tr valign="top">
     
                            </tr>
                          </tbody>
                        </table>

					  </td>
                    </tr>
                  </tbody>
                </table>
			  </td>
                <!--������Ϣtable����-->
			
              <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr valign="top">
                    <td width="1%"></td>
                    <td width="97%"><p>����������<%=numRows %></p>
              
                      <td class="jive-rating-buttons" nowrap="nowrap" width="1%"><a href="index.jsp"></a></td>
                      <td width="1%"><div class="jive-buttons">
                        
		</div>        </td>
                  </tr>
                  <tr>
                   
                  </tr>

				  </tbody>
				</table>
		      </td>
			</tr>
		  </tbody>
		</table>

		
	  <!--�ظ���ѭ����ʼ -->
      <!-- ѭ���������ʼ -->
      <%
         int i=0;
      int[] id=new int[numRows];
    
          rs.beforeFirst();
	      while (rs.next()) {
	    	  id[i]=rs.getInt("tpcid");
	    	  int c=id[i];
	   
		  	String classType = i % 2 == 0 ? "jive-even" : "jive-odd";
	  %>
		<table summary="Message" border="0" cellpadding="0"
											cellspacing="0" width="100%">
		  <tbody>
			<tr id="jive-message-780144" class="<%=classType%>" valign="top">
			  <td class="jive-first" width="1%"><!-- ������Ϣ��table -->
				<table border="0" cellpadding="0" cellspacing="0" width="150">
				  <tbody>
					<tr>
					  <td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
						  <tbody>
							<tr valign="top">
							  <td style="padding: 0px;" width="1%">
							  </td>
							  <td style="padding: 0px;" width="99%">�����û���<%=rs.getString("user") %>
							  
							  </td>
							</tr>
						  </tbody>
						</table>
					
						<br />
						<span class="jive-description">��������<%=rs.getInt("dsc")%><br />
						�������<%=rs.getInt("viewtimes")%>
</span>
					  </td>
					</tr>
				  </tbody>
				</table>
			  </td>
				<!--������Ϣtable����-->
			
			  <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
				  <tr valign="top">
					<td width="1%"></td>

					<td width="97%"><a href="viewDetail.jsp?tpcid=<%=rs.getString("tpcid")%>"> ���⣺<%=rs.getString("title")%></a>
                      <p>����ʱ�䣺<%=rs.getString("date")%></p>
					</td>
					<td class="jive-icon-label"><a href="reply.jsp?tpcid=<%=rs.getString("tpcid")%>">�ظ� </a> </td>
					  <td class="jive-rating-buttons" nowrap="nowrap" width="1%"></td>
					  <td width="1%">&nbsp;</td>
				  </tr>
				  <tr>
					<td colspan="4" style="border-top: 1px solid rgb(204, 204, 204);"><br />
						<%=rs.getString("content")%><br />
						<br />
					</td>
				  </tr>
				
				
				  </tbody>
				</table>
			  </td>
			</tr>
		  </tbody>
		</table>
		<%
		  i++;
		  }
		 // cdbc.closeCon();
		%>
		</div>
		</div>
		</div>
		</div>

	  </td>
	</tr>
  </tbody>
</table>


</div>
<br/>

<%
rs.close(); 
stmt.close(); 
connection.close();  %>

     
</body>
</html>