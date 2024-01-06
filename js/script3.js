
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

        

 // 監聽網頁滾動事件
window.addEventListener('scroll', function() {
    const collapses = document.querySelectorAll('.collapse.show');
 
    // 如果有展開的 Collapse，則收合它們
    if (collapses.length > 0) {
       collapses.forEach(collapse => {
          collapse.classList.remove('show');
       });
    }
 });


 $(document).ready(function () {
    function showContent(contentId) {
        // 隱藏所有 main-container 區塊
        $('.main-container').hide();
        // 顯示點擊的 main-container 區塊
        $(`#content-${contentId}`).show();
    }

    $('#inputbtn1').click(function (e) {
        e.preventDefault();
        // 表單驗證
        if ($('#inputfirstname').val() === '' || $('#inputSecondname').val() === '' || $('#inputPostal').val() === '' || $('#inputPhoneNumber').val() === ''  || $('#inputAddress').val() === ''  ) {
            $('#myModal').modal('show');
        } else {
            showContent(2);
        }
    });


    $('#inputbtn2').click(function (e) {
        e.preventDefault();
        // 表單驗證
        // 添加其他表單字段的驗證
        if ($('#inputCreditCard').val() === '' || $('#inputSecurityCode').val() === '' || $('#inputexpiry_date').val() === '' ) {
            $('#myModal').modal('show');
        } else {
            showContent(3);
        }
    });

    // 當用戶點擊確定按鈕時關閉模態框
    $('#confirmBtn').click(function () {
        $('#myModal').modal('hide');
    });
    $('#confirmBtn2').click(function () {
        $('#myModal').modal('hide');
    });
});

function formatCreditCard() {
    // 獲取輸入框中的信用卡號碼
    var inputCreditCard = document.getElementById('inputCreditCard');
    var creditCardNumber = inputCreditCard.value;

    // 移除所有非數字的字符
    creditCardNumber = creditCardNumber.replace(/\D/g, '');

    // 將信用卡號碼每四位加上一個破折號
    var formattedCreditCard = creditCardNumber.replace(/(\d{4})(?=\d)/g, '$1-');

    // 更新輸入框中的值
    inputCreditCard.value = formattedCreditCard;
}