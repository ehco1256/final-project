<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
Connection con = null;
PreparedStatement pstmt = null;

try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    con = DriverManager.getConnection(url, "root", "1234");
    String sql = "USE `newproduct`";
    con.createStatement().execute(sql);

    // 獲取表單資料
    String ID = request.getParameter("ID");
	String productName = request.getParameter("productName");
	String productprice = request.getParameter("productprice");
	String productnote = request.getParameter("productnote");


    // 準備 SQL 語句並將數據插入到資料庫
    sql = "INSERT INTO newproduct (ID, productName, productprice, productnote) VALUES (?, ?, ?, ?)";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, ID);
	pstmt.setString(2, productName);
	pstmt.setString(3, productprice);
	pstmt.setString(4, productnote);

    // 執行更新
    pstmt.executeUpdate();
    
    // 關閉資源
    pstmt.close();
    con.close();

    response.sendRedirect("ruler.jsp"); // 跳轉頁面
}
  
 finally {
    
        // 關閉資源
        if (pstmt != null) {
            pstmt.close();
        }
        if (con != null) {
            con.close();
        }
}
%>
