<?php include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';
include(__DIR__ .'/dashboard.php');
$stt = 1;
// Lấy giá trị tìm kiếm từ URL
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Truy vấn lấy danh sách sinh viên cùng với các khóa học đã đăng ký (với tìm kiếm)
$query_enrollments = "SELECT `donhang`.`madh`, `donhang`.`makh`, `donhang`.`ngaytao`, `donhang`.`soluong`, `donhang`.`tinhtrang`, `donhang`.`ngaydat`
FROM `donhang`
WHERE 
        `donhang`.`madh` LIKE '%$search%'";
$result_enrollments = mysqli_query($connect, $query_enrollments);
?>

<!-- Form tìm kiếm -->
<form action="" method="get">
    <label for="search">Tìm kiếm đơn hàng:</label>
    <input type="text" name="search" value="<?= htmlspecialchars($search) ?>" placeholder="Nhập mã đơn hàng">
    <input type="submit" value="Tìm kiếm">
    <input type="reset" value="Nhập lại">
</form>

<!-- Bảng hiển thị  -->

<table border="1">
    <tr>
        <th>STT</th>
        <th>Mã Đơn Hàng</th>
        <th>Mã Khách Hàng</th>
        <th>Ngày Tạo</th>
        <th>Số Lượng</th>
        <th>Tình Trạng</th>
        <th>Ngày Đặt</th>
        <th>Hành Động</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result_enrollments)): ?>
        <tr>
            <td><?= $stt++ ?></td>
            <td><?= $row['madh'] ?></td>
            <td><?= $row['makh'] ?></td>
            <td><?= $row['ngaytao'] ?></td>
            <td><?= $row['soluong'] ?></td>
            <td><?= $row['tinhtrang'] ?></td>
            <td><?= $row['ngaydat'] ?></td>
           
        </tr>
    <?php endwhile; ?>
    <?php if (mysqli_num_rows($result_enrollments) == 0) {
        echo "<tr><td colspan='6'>Không có thông tin nào</td></tr>";
    }
    ?>
</table>
