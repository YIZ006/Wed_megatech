<?php include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';
include(__DIR__ .'/dashboard.php');
$stt = 1;
// Lấy giá trị tìm kiếm từ URL
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Truy vấn lấy danh sách sinh viên cùng với các khóa học đã đăng ký (với tìm kiếm)
$query_enrollments = "SELECT `khachhang`.`makh`, `khachhang`.`hoten`, `khachhang`.`diachi`, `khachhang`.`email`, `khachhang`.`dienthoai`, `khachhang`.`ngaydangky`
FROM `khachhang`
WHERE 
        `khachhang`.`hoten` LIKE '%$search%' OR 
        `khachhang`.`diachi` LIKE '%$search%' OR 
        `khachhang`.`email` LIKE '%$search%' OR 
        `khachhang`.`dienthoai` LIKE '%$search%' OR
        `khachhang`.`ngaydangky` LIKE '%$search%'
        ";
$result_enrollments = mysqli_query($connect, $query_enrollments);
?>

<!-- Form tìm kiếm -->
<form action="" method="get">
    <label for="search">Tìm kiếm Khách Hàng:</label>
    <input type="text" name="search" value="<?= htmlspecialchars($search) ?>" placeholder="Nhập tên khách hàng, email, số điện thoại, hoặc ngày sinh">
    <input type="submit" value="Tìm kiếm">
    <input type="reset" value="Nhập lại">
</form>

<!-- Bảng hiển thị  -->

<table border="1">
    <tr>
        <th>ID</th>
        <th>Full_Name</th>
        <th>ADDRESS</th>
        <th>EMAIL</th>
        <th>PHONE</th>
        <th>DATE_REGISTER</th>
        <th>ACTION</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result_enrollments)): ?>
        <tr>
            <td><?= $stt++ ?></td>
            <td><?= $row['hoten'] ?></td>
            <td><?= $row['diachi'] ?></td>
            <td><?= $row['email'] ?></td>
            <td><?= $row['dienthoai'] ?></td>
            <td><?= $row['ngaydangky'] ?></td>
            <td><a href="/Project1_Product/customer/delete_customer.php?makh=<?= $row['makh'] ?>">Xóa</a> /
                <a href="/Project1_Product/customer/update_customer.php?makh=<?= $row['makh'] ?>">Cập Nhật</a>
            </td>
        </tr>
    <?php endwhile; ?>
    <?php if (mysqli_num_rows($result_enrollments) == 0) {
        echo "<tr><td colspan='6'>Không có thông tin nào</td></tr>";
    }
    ?>
</table>
<a href="/Project1_Product/admin/dashboard.php">Về giao diện quản trị dữ liệu</a>