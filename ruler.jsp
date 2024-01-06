<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後台管理系統</title>
    <link rel="icon" href="p/icon.ico">
    <link rel="stylesheet" href="css/ruler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <script src="js/ruler.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <header>
        <h2>後台管理系統</h2>
    </header>

    <div id="sidebar">
        <ul>
            <li><a href="index.jsp" onclick="changeContent('dashboard')">首頁</a></li>
            <li><a href="#" onclick="changeContent('user')">使用者管理</a></li>
            <li><a href="#" onclick="changeContent('product')">產品管理</a></li>
            <li><a href="#" onclick="changeContent('order')">訂單管理</a></li>
            <li><a href="index.jsp" class="btn btn-danger">登出</a></li>
        </ul>
    </div>

    <div id="main-content">
        <h2>商品列表</h2>

        
		  <title>商品管理</title>
  <style>
    /* 模態框樣式 */
    .modal {
      display: none;
      position: fixed;
      z-index: 1;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      overflow: auto;
      background-color: rgba(0, 0, 0, 0.4);
    }

    .modal-content {
      background-color: #fefefe;
      margin: 15% auto;
      padding: 20px;
      border: 1px solid #888;
      width: 80%;
    }

    .close {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
    }

    .close:hover,
    .close:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
    }
  </style>
</head>
<body>

<!-- 建立按鈕 -->
<button class="btn btn-primary" onclick="showModal('add')">新增商品</button>

<!-- 定義模態框 -->
<div id="addModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal('add')">&times;</span>
    <h2>新增商品</h2>
    <!-- 表單開始 -->
    <form action="Page.jsp" method="post">
      <label for="ID">ID：</label><br>
	  <input type="text" id="ID" name="ID"><br><br>
	  <label for="productName">商品名稱：</label><br>
	  <input type="text" id="productName" name="productName"><br><br>
	  <label for="productprice">價格：</label><br>
	  <input type="text" id="productprice" name="productprice"><br><br>
	  <label for="productpic">備註：</label><br>
	  <input type="text" id="productpic" name="productpic"><br><br>
      
      <input type="submit" class="btn btn-dark" value="新增">
    </form>
    <!-- 表單結束 -->
  </div>
</div>

<!-- JavaScript 部分 -->
<script>
  // 顯示模態框
  function showModal(modalId) {
    var modal = document.getElementById(modalId + "Modal");
    modal.style.display = "block";
  }

  // 關閉模態框
  function closeModal(modalId) {
    var modal = document.getElementById(modalId + "Modal");
    modal.style.display = "none";
  }
 
 

</script>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>商品名稱</th>
                    <th>價格</th>
                    <th>備註</th>
                    <th>時間</th>
                </tr>
            </thead>
			<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    
        // 取得資料庫連線
		String urll="jdbc:mysql://localhost/?serverTimezone=UTC";
		conn=DriverManager.getConnection(urll,"root","1234");
		String sqll="USE `newproduct`";
		conn.createStatement().execute(sqll);
        // 執行 SQL 查詢，按照 timestamp 排序
        String query = "SELECT * FROM newproduct ORDER BY timestamp DESC";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(query);

        // 取得資料並顯示在網頁上
        while (rs.next()) {
            
            String ID = rs.getString("ID");
			String productName = rs.getString("productName");
			String productprice = rs.getString("productprice");
			String productnote = rs.getString("productnote");
            Timestamp timestamp = rs.getTimestamp("timestamp");

%>
            <tbody>
                    <tr>
						<td><%=ID%></td>
						<td><%=productName%></td>
						<td>NT$<%=productprice%></td>
						<td><%=productnote%></td>
						<td><%=timestamp%></td>
					</tr>
				
            </tbody>
</table>
     
    </div>


	
		<%}%>
    <!-- Modal -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="productModalLabel">商品管理</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- 商品表單會動態加載在這裡 -->
                    <form id="productForm">
                        <div class="form-group">
                            <label for="productName">商品名稱：</label>
                            <input type="text" class="form-control" id="productName" placeholder="輸入商品名稱" required>
                        </div>
                        <div class="form-group">
                            <label for="productPrice">價格：</label>
                            <input type="number" class="form-control" id="productPrice" placeholder="輸入價格" required>
                        </div>
                        <div class="form-group">
                            <label for="productImage">上傳圖片：</label>
                            <input type="file" class="form-control-file" id="productImage" accept="image/*">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">關閉</button>
                    <button type="button" class="btn btn-primary" onclick="saveProduct()">儲存</button>
                </div>
            </div>
        </div>
    </div>



</body>
</html>
