<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
if(request.getParameter("id") !=null && !request.getParameter("id").equals("") 
    && request.getParameter("pwd") != null && !request.getParameter("pwd").equals("")){
    String id=request.getParameter("id");
    //sql = "SELECT FROM members WHERE id='" +request.getParameter("id") + 
    //      "'  AND pwd='" + request.getParameter("pwd") + "'"  ; 

    //rs =con.createStatement().executeQuery(sql);
    sql = "SELECT * FROM members WHERE id= ? AND pwd=? " ;


    PreparedStatement pstmt=null;
    pstmt = con.prepareStatement(sql);
    pstmt.setString(1, request.getParameter("id"));
    pstmt.setString(2, request.getParameter("pwd"));

    ResultSet paperrs=pstmt.executeQuery();

    if(paperrs.next()){
        session.setAttribute("id",request.getParameter("id"));
        if(id.equals("admin@1")){
            response.sendRedirect("ruler.jsp") ;
        }else{
            con.close();//結束資料庫連結
            out.println("登入成功 <a href='index.jsp'>按此</a>回主頁面");
            }

    }
    else{
        con.close();//結束資料庫連結
        out.println("帳號密碼不符 !! <a href='index.jsp'>按此</a>重新登入");
    }
}
else
    response.sendRedirect("index.jsp");

%>
