<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
    PreparedStatement pstmt = null;
    try {
        // 獲取表單資料
        String name = request.getParameter("registername");
        String id = request.getParameter("registerid");
        String pwd = request.getParameter("registerpwd");
        // 如果需要確認密碼，則可以獲取確認密碼欄位

        // 準備 SQL 語句並將數據插入到資料庫
        sql = "INSERT INTO members (name, id, pwd) VALUES (?, ?, ?)";
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, id);
        pstmt.setString(3, pwd);
        int rowsAffected = pstmt.executeUpdate();

        // 執行插入操作後的邏輯
        if (rowsAffected > 0) {
            // 跳轉到成功頁面
			response.sendRedirect("index.jsp") ;
        } else {
            // 跳轉到失敗頁面
			out.println("不符格式 !! <a href='index.jsp'>按此</a>重新註冊");
        }
    } finally {
        // 關閉資料庫連接等資源
        if (pstmt != null) {			
            pstmt.close();
        }
        if (con != null) {
            con.close();
        }
    }
%>
