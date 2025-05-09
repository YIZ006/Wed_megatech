<?php
session_start();
include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';

// Kiểm tra CSRF token (nếu bạn triển khai form xác nhận)
if ($_SERVER['REQUEST_METHOD'] !== 'GET') {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?error=invalid_method");
    exit;
}

if (!isset($_GET['maloai'])) {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?error=missing_id");
    exit;
}

$maloai = (int) $_GET['maloai'];

// Kiểm tra danh mục có tồn tại không
$check_exist_sql = "SELECT * FROM loaisanpham WHERE maloai = ?";
$stmt = mysqli_prepare($connect, $check_exist_sql);
mysqli_stmt_bind_param($stmt, "i", $maloai);
mysqli_stmt_execute($stmt);
$result_exist = mysqli_stmt_get_result($stmt);

if (mysqli_num_rows($result_exist) === 0) {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?error=not_found");
    exit;
}

// Kiểm tra ràng buộc: có sản phẩm liên quan không
$check_sql = "SELECT COUNT(*) AS total FROM sanpham WHERE maloai = ?";
$stmt = mysqli_prepare($connect, $check_sql);
mysqli_stmt_bind_param($stmt, "i", $maloai);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);
$row = mysqli_fetch_assoc($result);

if ($row['total'] > 0) {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?error=linked");
    exit;
}

// Ghi log hành động
$admin_id = $_SESSION['admin_id'] ?? 0;
$hanhdong = "Xóa danh mục có mã: $maloai";
$log_sql = "INSERT INTO admin_log (admin_id, hanhdong, thoigian) VALUES (?, ?, NOW())";
$stmt = mysqli_prepare($connect, $log_sql);
mysqli_stmt_bind_param($stmt, "is", $admin_id, $hanhdong);
mysqli_stmt_execute($stmt);

// Tiến hành xóa
$delete_sql = "DELETE FROM loaisanpham WHERE maloai = ?";
$stmt = mysqli_prepare($connect, $delete_sql);
mysqli_stmt_bind_param($stmt, "i", $maloai);
if (mysqli_stmt_execute($stmt)) {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?success=deleted");
} else {
    header("Location: /Project1_Product/product/quanly_danhmuc.php?error=delete_failed");
}
exit;
?>
