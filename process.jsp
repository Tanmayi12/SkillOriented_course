<%@ page import="java.sql.*"%>
<%
String ename=request.getParameter("ename");
String email=request.getParameter("email");
try
{
Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@ntsocietyserver:1521:oralbrce","IPC107","IPC107");
String qry="insert into signup values(?,?)";
PreparedStatement ps=con.prepareStatement(qry);
ps.setString(1,ename);
ps.setString(2,email);
int sts=ps.executeUpdate();
out.println(sts+"row inserted successfully");
}
catch(Exception e)
{
out.print(e);
e.printStackTrace();
}
%>