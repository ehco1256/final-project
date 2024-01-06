
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

        
function showContent(contentId) {
    // 隱藏所有 main-content 區塊
    const mainContents = document.querySelectorAll('.main-content');
    mainContents.forEach(content => {
       content.style.display = 'none';
    });
 
    // 顯示點擊的 main-content 區塊
    const targetContent = document.getElementById(`content-${contentId}`);
    if (targetContent) {
       targetContent.style.display = 'block';
    }
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

