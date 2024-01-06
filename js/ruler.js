function showModal(action, productId) {
            var modalTitle = document.getElementById('productModalLabel');
            var modalBody = document.querySelector('.modal-body');

            if (action === 'add') {
                modalTitle.innerHTML = '新增商品';
                modalBody.innerHTML = `
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
                `;
            } else if (action === 'edit') {
                // Logic to load product data for editing
                modalTitle.innerHTML = '編輯商品';
                modalBody.innerHTML = `
                    <!-- Product form for editing -->
                `;
            }

            $('#productModal').modal('show');
        }

        function saveProduct() {
            var productName = document.getElementById('productName').value;
            var productPrice = document.getElementById('productPrice').value;
            var productImage = document.getElementById('productImage').files[0];

            // You can now send this data to the server using AJAX or FormData

            // For simplicity, let's just close the modal
            $('#productModal').modal('hide');
        }