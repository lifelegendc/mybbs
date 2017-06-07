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
<title>查看帖子</title>
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
	
	Statement stmt;//语句对象
	String sql="";//sql语句
	ResultSet rs;//结果集合
	ResultSetMetaData rmeta;////结果集合元数据
	int numRows=0;//确定数据集的行数，亦字段数	
	int numColumns=0;//确定数据集的列数，亦字段数	
%>

<%
connection=dv.connectDB();
//连接数据库之后，创建语句对象
stmt = connection.createStatement();
//sql语句

sql = "select title,content,date,user,dsc,tpcid,viewtimes from "+tableName+" order by date desc";
//创建语句对象之后，通过语句对象进行查询操作，返回结果集合
rs=stmt.executeQuery(sql);
if(!rs.first())//数据库中没有这条记录
{
	out.println("对不起，目前帖子为空");
	
	return;
}
else{
//数据库中有这条记录
System.out.println("数据库中有类似的包含关键字'"+title+"'的记录！\n");
//根据结果集合，读取结果集合元数据
rs.last();
numRows=rs.getRow();
//System.out.println(numRows);
//确定数据集的列数，亦字段数

//输出每一条记录
rs.beforeFirst();
rmeta = rs.getMetaData();
//确定数据集的列数，亦字段数
numColumns=rmeta.getColumnCount();

}
%>
<div align = "center">
<jsp:include page="Top.jsp"></jsp:include>
</div>
<!--主题贴开始-->
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
              <td class="jive-first" width="1%"><!-- 个人信息的table -->
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
                <!--个人信息table结束-->
			
              <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tbody>
                  <tr valign="top">
                    <td width="1%"></td>
                    <td width="97%"><p>帖子总数：<%=numRows %></p>
              
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

		
	  <!--回复贴循环开始 -->
      <!-- 循环结果集开始 -->
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
			  <td class="jive-first" width="1%"><!-- 个人信息的table -->
				<table border="0" cellpadding="0" cellspacing="0" width="150">
				  <tbody>
					<tr>
					  <td>
						<table border="0" cellpadding="0" cellspacing="0" width="100%">
						  <tbody>
							<tr valign="top">
							  <td style="padding: 0px;" width="1%">
							  </td>
							  <td style="padding: 0px;" width="99%">发帖用户：<%=rs.getString("user") %>
							  
							  </td>
							</tr>
						  </tbody>
						</table>
					
						<br />
						<span class="jive-description">跟帖数：<%=rs.getInt("dsc")%><br />
						浏览量：<%=rs.getInt("viewtimes")%>
</span>
					  </td>
					</tr>
				  </tbody>
				</table>
			  </td>
				<!--个人信息table结束-->
			
			  <td class="jive-last" width="99%"><table border="0" cellpadding="0" cellspacing="0" width="100%">
				<tbody>
				  <tr valign="top">
					<td width="1%"></td>

					<td width="97%"><a href="viewDetail.jsp?tpcid=<%=rs.getString("tpcid")%>"> 主题：<%=rs.getString("title")%></a>
                      <p>发表时间：<%=rs.getString("date")%></p>
					</td>
					<td class="jive-icon-label"><a href="reply.jsp?tpcid=<%=rs.getString("tpcid")%>">回复 </a> </td>
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