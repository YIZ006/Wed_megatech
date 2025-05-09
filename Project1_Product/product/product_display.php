
<?php
include(__DIR__ . '/../connect.php');
// include(__DIR__ . '/product_add.php'); // an toàn hơn
// Câu lệnh lấy sản phẩm và thông tin loại
$sql = "
    SELECT sp.masp, sp.tensp, sp.giaban, sp.soluongton, sp.hinhanh, sp.mota,sp.giamgia, lsp.mota AS loai
    FROM sanpham sp
    JOIN loaisanpham lsp ON sp.maloai = lsp.maloai
";
$result = mysqli_query($connect, $sql);
?>

<?php if (mysqli_num_rows($result) > 0): ?>
    <div class="product-list">
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            <div class="product-card">
                <div class="discount-label">Giảm Giá <?= $row['giamgia'];?>%</div>
                <img src="uploads/<?= $row['hinhanh'] ?>" alt="<?= $row['tensp'] ?>" class="product-img">
                <h3 class="product-name"><?= $row['tensp'] ?></h3>
                <div class="price">
                    <span class="current-price"><?= number_format($row['giaban'], 0, ',', '.') ?>đ</span>
                    <span class="original-price"><?= number_format($row['giaban'] * 1.13, 0, ',', '.') ?>đ</span>
                </div>
                <p class="small-note">Smember giảm thêm đến 308.000đ</p>
                <p class="installment">Không phí chuyển đổi khi trả góp 0%</p>
                <div class="footer">
                    <div class="stars">⭐️⭐️⭐️⭐️⭐️</div>
                    <a href="chitiet.php?id=<?= $row['masp'] ?>" class="favorite">❤️</a>
                </div>
            </div>
        <?php endwhile; ?>
    </div>
<?php else: ?>
    <p>Không có sản phẩm nào.</p>
<?php endif; ?>

<style>
    .product-card {
    width: 280px;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 16px;
    position: relative;
    font-family: Arial, sans-serif;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    background-color: #fff;
}

.product-card img {
    width: 100%;
    border-radius: 8px;
    margin-bottom: 12px;
}

.discount-badge {
    position: absolute;
    top: 10px;
    left: 10px;
    background-color: red;
    color: white;
    font-size: 13px;
    font-weight: bold;
    padding: 2px 8px;
    border-radius: 4px;
}

.installment-badge {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: #f0f8ff;
    color: #007bff;
    font-size: 12px;
    font-weight: bold;
    padding: 2px 6px;
    border-radius: 4px;
    border: 1px solid #007bff;
}

.product-name {
    font-size: 15px;
    font-weight: bold;
    margin: 8px 0;
    min-height: 44px;
}

.price {
    display: flex;
    align-items: center;
    gap: 8px;
}

.new-price {
    color: red;
    font-size: 18px;
    font-weight: bold;
}

.old-price {
    color: #888;
    text-decoration: line-through;
    font-size: 14px;
}

.smember-sale {
    font-size: 13px;
    color: #555;
    margin-top: 4px;
}

.smember-sale span {
    color: red;
    font-weight: bold;
}

.note {
    background-color: #f5f5f5;
    font-size: 12px;
    color: #444;
    margin-top: 10px;
    padding: 6px;
    border-radius: 5px;
}

.bottom-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 10px;
    font-size: 15px;
}

.stars {
    color: gold;
}

.favorite {
    color: red;
    font-size: 20px;
    cursor: pointer;
}

</style>