<%@page import = "java.sql.*"%>
<%
Connection con = null;
PreparedStatement stmt = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost/?serverTimezone=UTC";
con=DriverManager.getConnection(url,"root","1234");
String sql="USE `members`";
con.createStatement().execute(sql);
request.setCharacterEncoding("UTF-8");
%>