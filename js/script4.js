    // 登入與註冊頁面切換
    $(document).ready(function () {
        $("#userButton").click(function () {
            window.scrollTo({
                top:0,
                behavior:'smooth'
            })
            $("#userSidebar").toggleClass("show");
            if ($("#userSidebar").hasClass("show")) {
                $("body").css("overflow", "hidden");
            } else {
                $("body").css("overflow", "auto");
            }
        });

        $("#toggleForm").click(function () {
            $("#loginForm, #registerForm").toggle();
            var buttonText = $(this).text();
            $(this).text(buttonText === "建立帳號" ? "登入" : "建立帳號");
        });

        $("#closeSidebar").click(function () {
            $("#userSidebar").removeClass("show");
            $("body").css("overflow", "auto"); // 當 sidebar 關閉時啟用滾動
        });
        
    });

    //檢查密碼是否一致
    document.addEventListener('DOMContentLoaded', function () {
        var registerForm = document.getElementById('registerForm');
        var registerPassword = document.getElementById('registerPassword');
        var confirmPassword = document.getElementById('confirmPassword');
        var passwordMismatch = document.getElementById('passwordMismatch');

        registerForm.addEventListener('submit', function (event) {
            if (registerPassword.value !== confirmPassword.value) {
                // 如果密碼和確認密碼不一致，顯示警告
                passwordMismatch.style.display = 'block';
                // 阻止表單提交
                event.preventDefault();
            } else {
                // 如果一致，隱藏警告
                passwordMismatch.style.display = 'none';
            }
        });
    });


    $(document).ready(function () {
        // 登入表單檢視密碼按鈕
        $("#viewPassword").click(function () {
            togglePasswordVisibility("loginPassword");
        });

        // 註冊表單檢視密碼按鈕
        $("#viewRegisterPassword").click(function () {
            togglePasswordVisibility("registerPassword");
        });

        // 註冊表單檢視確認密碼按鈕
        $("#viewCheckPassword").click(function () {
            togglePasswordVisibility("confirmPassword");
        });

    });

    function togglePasswordVisibility(inputId) {
        var passwordInput = $("#" + inputId);
        var passwordFieldType = passwordInput.attr("type");

        // 切換密碼欄位的顯示狀態
        if (passwordFieldType === "password") {
            passwordInput.attr("type", "text");
        } else {
            passwordInput.attr("type", "password");
        }
    }

    //監聽訂閱最新資訊的電郵郵件輸入欄//
    document.addEventListener('DOMContentLoaded', function () {
        var emailInput = document.querySelector('input[name="mail"]');
        var submitButton = document.getElementById('submit_e-mail');

        emailInput.addEventListener('input', function () {
            if (emailInput.value.trim() !== '') {
                submitButton.style.display = 'inline-block'; // 或者使用 'block'，視情況而定
            } else {
                submitButton.style.display = 'none';
            }
        });
    });


    
// 搜尋列伸展   
    var isExpanded = false;

        function toggleSearch() {
            var searchInput = document.getElementById("searchInput");

                if (isExpanded) {
                    searchInput.style.width = "0";
                } else {
                    searchInput.style.width = "150px";
                }

                isExpanded = !isExpanded;
            }



function toggleSearch() {
    var searchInput = document.getElementById("searchInput");
    var siteHeader = document.getElementById("site-header");

    if (isExpanded) {
        searchInput.style.width = "0";
        siteHeader.style.transform = "translateY(0)";
    } else {
        searchInput.style.width = "150px";
        siteHeader.style.transform = "translateY(0%)";
    }

    isExpanded = !isExpanded;
}


// 商品列表動畫
function toggleDisplay(elementId) {
    var sidebar = document.getElementById(elementId);
    
    if (isExpanded) {
        sidebar.style.display = "none";
    } else {
        sidebar.style.display = "inline-block";
    }

    isExpanded = !isExpanded;
}


function ring() {
    toggleDisplay("ringsidebar");
}

function necklace() {
    toggleDisplay("necklacesidebar");
}

function perfume() {
    toggleDisplay("perfumesidebar");
}

        

    