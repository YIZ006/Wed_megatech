<?php
// quanly_danhmuc.php
include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';
include_once('../admin/dashboard.php'); 

// Xử lý tìm kiếm nếu có
$search = isset($_GET['search']) ? $_GET['search'] : '';
$query = "SELECT * FROM loaisanpham WHERE mota LIKE '%$search%'";
$result = mysqli_query($connect, $query);
?>

<h2>Quản lý Danh mục</h2>
<a href="add_danhmuc.php">+ Thêm Danh mục</a>


<form method="get">
    <input type="text" name="search" placeholder="Tìm kiếm mô tả..." value="<?= htmlspecialchars($search) ?>">
    <button type="submit">Tìm</button>
</form>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên Loại</th>
        <th>Mô tả</th>
        <th>Giá bán</th>
        <th>Số lượng tồn</th>
        <th>Hình ảnh</th>
        <th>Hành động</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result)): ?>
        <tr>
            <td><?= $row['maloai'] ?></td>
            <td><?= $row['tenloai']?></td>
            <td><?= $row['mota'] ?></td>
            <td><?= $row['giaban'] ?></td>
            <td><?= $row['soluongton'] ?></td>
            <td><img src="../uploads/<?= $row['hinhanh'] ?>" width="80"></td>
            <td>
                <a href="update_danhmuc.php?maloai=<?= $row['maloai'] ?>">Sửa</a> |
                <a href="xoa_danhmuc.php?maloai=<?= $row['maloai'] ?>" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
</table>
<!-- <a href="/Project1_Product/admin/dashboard.php">Về giao diện quản trị dữ liệu</a> -->
<?php if (mysqli_num_rows($result) == 0): ?>
    <p>Không tìm thấy danh mục nào.</p>
<?php endif; ?>

