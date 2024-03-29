<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>香水</title>
    <link rel="icon" href="p/icon.ico">
    <link rel="stylesheet" href="css/style5.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

</head>
<body>
       <!--連結 Bootstrap JS -->
       <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/popper.js@2.11.6/dist/umd/popper.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
       <script src="js/script5.js"></script>

       <header id="site-header">
        <div class="logo"> <!--頂端頁-->
            <div class="logo-center">
                <a href="index.jsp"><img src="p/logo/-2.svg" alt=""></a>
            </div>
            <div class="logo-right">
                <nav style="display: flex; align-items: center;">
                    <div id="searchContainer">
                        <input type="text" id="searchInput" placeholder="尋找什麼....">
                        <button type="button" id="searchButton" onclick="toggleSearch()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-search mx-2" viewBox="0 0 16 16">
                                <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
                            </svg>
                        </button>
                    </div>
                    
                    <button class="btn btn-light btn-rotate" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample6" aria-expanded="false" aria-controls="collapseExample">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart mx-2" viewBox="0 0 16 16">
                            <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5M3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4m7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4m-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2m7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2"/>
                        </svg>
                    </button>
                
                    <button type="btn btn-primary" id="userButton" data-toggle="popover" data-placement="bottom" data-html="true" data-content="<div style='width: 200px; height: 200px; background-color: #f0f0f0;'></div>">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person mx-2" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664z"/>
                        </svg>
                    </button>
                </nav>
            </div>
            <div class="collapse" id="collapseExample6">
                <div class="card card-body" style="width: 300px;height: 400px;">
                    <head>
                        <h5 style="justify-content: center;font-weight: bold;">購物車</h5>
                    </head>
                    <main style="height: 80%;" class="ce6">
                        <div class="list">
                        <div>
                            <img src="p/PAY/necklace1.webp" alt="" width="100" height="100">
                        </div>
                        <div style="display: flex;justify-content: center;align-items: center;">
                            <h6>NT$ 2,880</h6>
                            <h6>數量：1</h6>
                        </div>
                        </div>
    
                    </main>
                    <foot style="justify-content: center;">
                        <a href="pay.html">
                            <input type="submit" value="付款" id="bta">
                        </a>
                    </foot>
                </div>
            </div>

        </div>
        <div class="container"> <!--選單列-->
            <p>
                <a class="btn btn-primary btn-rotate" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                    About Us
                </a>
                <button class="btn btn-primary btn-rotate" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample2" aria-expanded="false" aria-controls="collapseExample">
                    History
                </button>
                <button class="btn btn-primary btn-rotate" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample3" aria-expanded="false" aria-controls="collapseExample">
                    Services
                </button>
                <button class="btn btn-primary btn-rotate" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample4" aria-expanded="false" aria-controls="collapseExample">
                    Products
                </button>
                <button class="btn btn-primary btn-rotate" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample5" aria-expanded="false" aria-controls="collapseExample">
                    Contact
                </button>
            </p>
            <!--選單列內文-->
            <div>
                <div class="collapse" id="collapseExample">
                    <div class="card card-body">
                        將時尚融入生活，獻上獨特饰品、精緻项鍊及撩人香氛。點綴每位用戶，綻放獨特魅力。
                    </div>
                </div>
                <div class="collapse" id="collapseExample2">
                    <div class="card card-body">
                        "Vogue Essence 源自悠久歷史，百年匠心傳承，精湛工藝雕琢細緻品質。獨創的設計靈感來自悠久歷史的瑰寶，每一件珠寶都是匠心獨運的傑作，承載著時光的記憶。品牌深深植根於傳統與時尚的交汇之地，將卓越品質傳承發揚，致敬優雅精緻的生活方式，為每位追求卓越的您打造獨一無二的精品體驗。"
                    </div>
                </div>
                <div class="collapse" id="collapseExample3">
                    <div class="card card-body">
                        <a href="" style="color: black;">常見問題</a>
                    </div>
                </div>
                <div class="collapse" id="collapseExample4">
                    <div class="card card-body">
                        <div style="margin-bottom: 10px;"> <!--戒指列表-->
                            <button type="btn btn-light" style="border: none;background-color: #21212100;" id="ringButton" onclick="ring()">
                                戒指
                            </button>
                            <div id="ringsidebar" style="display: none;">
                                <a href="ring.html" style="color: black;margin-left: 10px;">2023美式經典款</a>
                                <a href="ring.html" style="color: black;margin-left: 10px;">Exquisite Classics 系列</a>
                                <a href="ring.html" style="color: black;margin-left: 10px;">Vogue Essence Pro系列</a>
                            </div>
                        </div>
                        <div style="margin-bottom: 10px;"> <!--項鍊列表-->
                            <button type="btn btn-light" style="border: none;background-color: #21212100;" id="necklaceButton" onclick="necklace()">
                                項鍊
                            </button>
                            <div id="necklacesidebar" style="display: none;">
                                <a href="necklace.html" style="color: black;margin-left: 10px;">Wings of Freedom 系列</a>
                                <a href="necklace.html" style="color: black;margin-left: 10px;">Vogue Essence Pro系列</a>
                            </div>
                        </div>
                        <div style="margin-bottom: 10px;">  <!--香水列表-->
                            <button type="btn btn-light" style="border: none;background-color: #21212100;" id="perfumeButton" onclick="perfume()">
                                香水
                            </button>
                            <div id="perfumesidebar" style="display: none;">
                                <a href="perfume.html" style="color: black;margin-left: 10px;">Orchid Reverie 系列</a>
                                <a href="perfume.html" style="color: black;margin-left: 10px;">Vogue Essence Pro系列</a>
                            </div>
                        </div>
                    </div>
                </div>  
                <div class="collapse" id="collapseExample5">
                    <div class="card card-body">
                        <a href="" style="color: black;">聯絡我們</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="sidebar" id="userSidebar">  <!--登入與註冊頁面-->
            
            <!-- 登入表單 -->
            <form id="loginForm">
                <img src="p/logo/-2.svg" alt="">
                <div id="formText">登入</div>
                <div class="mb-3"> <!-- 登入頁面的電子郵件信箱輸入 -->
                    <label for="loginUsermail" class="form-label">電子郵件信箱</label>
                    <input type="email" class="form-control" id="loginUsername">
                </div>
                <div class="mb-3"> <!-- 登入頁面的密碼輸入 -->
                    <label for="loginPassword" class="form-label">密碼</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="loginPassword">
                        <button class="btn btn-outline-secondary" type="button" id="viewPassword">檢視密碼</button> <!-- 登入頁面的密碼檢視 -->
                    </div>
                </div>
                    <button type="submit" class="btn btn-dark"> <a href="backstage.html" style="color: #c6c6c6;text-decoration:none;">登入</a></button> <!-- 登入按鈕，等後端進行資料驗證，現在BATE用才會連接backstage.html，之後記得更改-->    <!-- 如果資料與DataBase的相同跳轉到backstage.html-->
            </form>
        
            <!-- 註冊表單 -->
            <form id="registerForm" style="display: none;">
                <img src="p/logo/-2.svg" alt="">
                <div id="formText">註冊</div>
                <div class="mb-3"> <!-- 註冊頁面的姓名輸入 -->
                    <label for="Name" class="form-label">姓名</label>
                    <input type="text" class="form-control" id="registerUsername">
                </div>

                <div class="mb-3"> <!-- 註冊頁面的電子郵件輸入 -->
                    <label for="registerUsermail" class="form-label">電子郵件信箱</label>
                    <input type="email" class="form-control" id="registerUsername">
                </div>
                <div class="mb-3"> <!-- 註冊頁面的密碼輸入 -->
                    <label for="registerPassword" class="form-label">密碼</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="registerPassword">
                        <button class="btn btn-outline-secondary" type="button" id="viewRegisterPassword">檢視密碼</button> <!-- 註冊頁面的密碼檢視 -->
                    </div>
                </div>
                <div class="mb-3"> <!-- 註冊頁面的重複確認密碼輸入 -->
                    <label for="confirmPassword" class="form-label">確認密碼</label>
                    <div class="input-group">
                        <input type="password" class="form-control" id="confirmPassword">
                        <button class="btn btn-outline-secondary" type="button" id="viewCheckPassword">檢視密碼</button> <!-- 註冊頁面的密碼檢視 -->
                    </div>
                    <small id="passwordMismatch" class="text-danger" style="display: none;">密碼不一致</small> <!-- 如果密碼輸入與密碼確認輸入的不同會跳出的警告 -->
                </div>
                
                <button type="submit" class="btn btn-success">註冊</button> <!-- 註冊按鈕 -->  <!-- 將資料新增到DataBase-->
            </form>
            
            
            <div style="width: 100%;height: auto; margin-top: 10%;"> <!-- 切換按鈕 -->
                <button class="btn btn-info" id="toggleForm">建立帳號</button>
        
                <button class="btn btn-secondary" id="closeSidebar">關閉</button> <!-- 關閉按鈕 -->
            </div>
        </div>
    </header>
    <main>
        <section class="v"> <!--兩張大圖-->
            <img src="p/perfume/perfume2.png" width="49.8%" height="900px">
            <img src="p/perfume/perfume1.png" width="49.8%" height="900px">
        </section>
        <h4 style="font-weight: bold; margin-top: 20px;">最精華的時尚，只屬於最完美的你</h4> <!-- 小文字 -->
        <section class="product"> <!--商品-->
            <section class="Product_card">
               <a href="buy.jsp"> <img src="p/perfume/perfume3 (1).png" alt=""></a>
                <p>Enchanting Essence</p>
                <h5>NT$3,880</h5>
            </section>
            <section class="Product_card">
				<a href="buy.jsp"> <img src="p/perfume/perfume4.png" alt=""></a>
                
                <p>Mystic Bloom</p>
                <h5>NT$4,220</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume5.png" alt="">
                <p>Celestial Aura</p>
                <h5>NT$5,320</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume6.png" alt="">
                <p>Velvet Whispers</p>
                <h5>NT$6,220</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume7.png" alt="">
                <p>Elysian Elegance</p>
                <h5>NT$3,990</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume8.png" alt="">
                <p>Midnight Serenade</p>
                <h5>NT$7,110</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume9.png" alt="">
                <p>Radiant Muse</p>
                <h5>NT$5,330</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume10.png" alt="">
                <p>Harmony Mist</p>
                <h5>NT$4,990</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume11.png" alt="">
                <p>Ethereal Veil</p>
                <h5>NT$3,220</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume12.png" alt="">
                <p>Captivating Breeze</p>
                <h5>NT$8,770</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume13.png" alt="">
                <p>Tranquil Bloom</p>
                <h5>NT$9,440</h5>
            </section>
            <section class="Product_card">
                <img src="p/perfume/perfume14.png" alt="">
                <p>Secret Garden</p>
                <h5>NT$6,440</h5>
            </section>
        </section>
        <div class="dynamic_ads"> <!--動態廣告-->
            <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="car    ousel"> <!-- 圖片切換按鈕 在圖片底部的那個 -->
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner"> <!-- 動態廣告圖片與內文 -->
                  <div class="carousel-item active" data-bs-interval="10000">
                    <a href="necklace.html"><img src="p/co/necklace.jpg" class="d-block w-100" alt="..."></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h5>Wings of Freedom 系列</h5>
                      <p>『翱翔品味，尊嚴展翅』</p>
                    </div>
                  </div>
                  <div class="carousel-item" >
                    <a href="ring.html"><img src="p/co/2.jpg" class="d-block w-100" alt="..."></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h5>Exquisite Classics 系列</h5>
                      <p>『經典永不過時』</p>
                    </div>
                  </div>
                  <div class="carousel-item" >
                    <a href="perfume.html"><img src="p/co/perfume.jpg" class="d-block w-100" alt="..."></a>
                    <div class="carousel-caption d-none d-md-block">
                      <h5>Orchid Reverie 系列</h5>
                      <p>『蘭花夢幻，香氣繚繞』</p>
                    </div>
                  </div>
                </div>
                <div> <!-- 左右切換按鈕 -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev"> <!-- 往回切換按鈕 -->
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next"> <!-- 向下切換按鈕 -->
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                    </button>
                </div>
              </div>
        </div>
        
        <h1>最新資訊</h1> <!-- 小文字 -->
        <section class="model">
            <!--商品-->
            <section class="model_card">
                <a href="ring.html"><img src="p/pexels-med-rofka-3073069.jpg" alt="">   </a>
                <h3>2023美式經典款</h3>
                <h3><a href="" title="know_more" class="word">瞭解更多</a></h3>
            </section>
            <section class="model_card">
                <a href="necklace.html"><img src="P/pexels-rolando-brando-2703907.jpg" alt=""></a>
                <h3>Vogue Essence Pro系列 </h3>
                <h3><a href="" title="know_more" class="word">瞭解更多</a></h3>
            </section>
        </section>
        
        
    </main>

</body>
<footer>
    <img src="p/logo/-2.svg"> <!-- logo -->

    <section class="foot">
        <section class="footcard"> <!-- 訂閱最新資訊 -->
            <h5>訂閱最新資訊</h5>
            <input type="email" name="mail" size="30" max="30" placeholder  ="電子郵件地址"
                style="background-color:  #212121; color:aliceblue;border-style:none;border-bottom: 1px solid #c6c6c6;height: 20px;">
                <button type="submit" class="e-mailbtn" id="submit_e-mail">送出</button>
            <ul>最新訊息</ul>
        </section>
        <section class="footcard"> <!-- 顧客服務 -->
            <h5>顧客服務</h5>
            <ul>
                聯絡我們
            </ul>
            <ul>
                常見問題
            </ul>
        </section>
        <section class="footcard">  <!-- 關於我們 -->
            <h5>關於我們</h5>
            <ul>
                法律聲明
            </ul>
            <ul>
                隱私政策
            </ul>
            <ul>
                最新消息
            </ul>
            <ul>
                Cookie 政策
            </ul>
            <ul>
                退換貨政策
            </ul>
        </section>
        <section class="footcard"> <!-- 瀏覽產品 -->
            <h5>瀏覽產品</h5>
            <nav>
                <ul>
                    戒指
                </ul>
                <ul>
                    項鍊
                </ul>
                <ul>
                    香水
                </ul>
            </nav>
        </section>
    </section>
    <p style="font-size: 10pt;">@Copyright Vogue Essence 2023</P>
</footer>

</html>