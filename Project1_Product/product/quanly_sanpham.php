<?php
include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';
 include_once('../admin/dashboard.php'); 


$stt = 1;
// Lấy giá trị tìm kiếm từ URL
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Nếu admin tìm kiếm, ghi log vào bảng admin_log
// bọc session 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}


if (!empty($search) && isset($_SESSION['admin_id'])) {
    $admin_id = $_SESSION['admin_id'];
    $hanhdong = "Tìm kiếm sản phẩm với từ khóa: " . $search;
    $thoigian = date('Y-m-d H:i:s');
    $stmt = $connect->prepare("INSERT INTO admin_log (admin_id, hanhdong, thoigian) VALUES (?, ?, ?)");
    $stmt->bind_param("iss", $admin_id, $hanhdong, $thoigian);
    $stmt->execute();
}

// Truy vấn lấy danh sách sản phẩm có tìm kiếm
$query_enrollments = "
    SELECT 
        sp.masp, 
        sp.tensp, 
        sp.giaban, 
        sp.soluongton,
        sp.hinhanh, 
        sp.mota, 
        lsp.mota AS loai_mota,  -- Lấy mô tả loại sản phẩm
        sp.giagoc, 
        sp.diem_danhgia, 
        sp.giamgia
    FROM 
        sanpham sp
    JOIN 
        loaisanpham lsp ON sp.maloai = lsp.maloai  -- JOIN với bảng loại sản phẩm
    WHERE 
        sp.tensp LIKE '%$search%' OR 
        sp.giaban LIKE '%$search%' OR 
        sp.mota LIKE '%$search%' OR 
        sp.maloai LIKE '%$search%' OR
        sp.giagoc LIKE '%$search%' OR
        sp.diem_danhgia LIKE '%$search%'
";
$result_enrollments = mysqli_query($connect, $query_enrollments);
?>

<!-- Form tìm kiếm -->
<form action="" method="get">
    <label for="search">Tìm kiếm Sản Phẩm:</label>
    <input type="text" name="search" value="<?= htmlspecialchars($search) ?>" placeholder="Nhập tên sản phẩm, giá bán, mô tả, mã loại, giá gốc, điểm đánh giá">
    <input type="submit" value="Tìm kiếm">
    <input type="reset" value="Nhập lại" onclick="window.location.href='sanpham.php'">
</form>
<a href="./them_sanpham.php">Thêm sản phẩm</a>
<!-- Bảng hiển thị  -->
<table border="1">
    <tr>
        <th>STT</th>
        <th>Tên sản phẩm</th>
        <th>Giá bán</th>
        <th>Số lượng tồn</th>
        <th>Hình ảnh</th>
        <th>Mô tả</th>
        <th>Mã loại</th>
        <th>Giá gốc</th>
        <th>Điểm đánh giá</th>
        <th>Giảm giá</th>
        <th>Hành Động</th>
    </tr>
    
    <?php while ($row = mysqli_fetch_assoc($result_enrollments)): ?>
        <tr>
            <td><?= $stt++ ?></td>
            <td><?= $row['tensp'] ?></td>
            <td><?= $row['giaban'] ?></td>
            <td><?= $row['soluongton'] ?></td>
            <td><img src="../uploads/<?= htmlspecialchars($row['hinhanh']) ?>" width="80"></td>
            </td>
            <td><?= $row['mota'] ?></td>
            <td><?= htmlspecialchars($row['loai_mota']) ?></td>
            <td><?= $row['giagoc'] ?></td>
            <td><?= $row['diem_danhgia'] ?></td>
            <td><?= $row['giamgia'] ?></td>
            <td>
                <a href="update_sanpham.php?masp=<?= $row['masp'] ?>">Sửa</a> |
                <a href="xoa_sanpham.php?masp=<?= $row['masp'] ?>" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
            </td>
        </tr>
    <?php endwhile; ?>
    <?php if (mysqli_num_rows($result_enrollments) == 0): ?>
        <tr>
            <td colspan="10">Không có thông tin nào</td>
        </tr>
    <?php endif; ?>
</table>

<!-- <a href="/Project1_Product/admin/dashboard.php">Về giao diện quản trị dữ liệu</a> -->