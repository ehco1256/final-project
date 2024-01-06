<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<%
Connection con = null;
PreparedStatement pstmt = null;

try{
    Class.forName("com.mysql.jdbc.Driver");
    String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
    con = DriverManager.getConnection(url, "root", "1234");
    String sql = "USE `message`";
    con.createStatement().execute(sql);

    // 獲取表單資料
    String message = request.getParameter("message");

    // 準備 SQL 語句並將數據插入到資料庫
    sql = "INSERT INTO message (message) VALUES (?)";
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, message);

    // 執行更新
    pstmt.executeUpdate();
    
    // 關閉資源
    pstmt.close();
    con.close();

    // 跳轉回留言板或其他頁面
    response.sendRedirect("buy.jsp"); // 將這裡的 messages.jsp 更改為你想跳轉的頁面
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
