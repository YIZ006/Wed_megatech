<?php include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php';
include(__DIR__ .'/dashboard.php');

// session_start();

if (!isset($_SESSION['admin_id'])) {
    // Nếu chưa đăng nhập, chuyển về trang login
    header('Location: /Project1_Product/admin/login_admin.php');
    exit;
}

// Lấy thông tin admin đã đăng nhập
$admin_id = $_SESSION['admin_id'];
$username_Admin = $_SESSION['username'];

// Bạn có thể query thêm thông tin từ DB nếu cần


$stt = 1;
// Lấy giá trị tìm kiếm từ URL
$search = isset($_GET['search']) ? $_GET['search'] : '';

// Truy vấn lấy danh sách sinh viên cùng với các khóa học đã đăng ký (với tìm kiếm)
$query_enrollments = "SELECT `admin`.`admin_id`, `admin`.`username`, `admin`.`password`, `admin`.`hoten`,`admin`.`email`, `admin`.`dienthoai`, `admin`.`quyen`, `admin`.`ngaytao`
FROM `admin`
WHERE 
        `admin`.`username` LIKE '%$search%' OR 
        `admin`.`password` LIKE '%$search%' OR 
        `admin`.`hoten` LIKE '%$search%' OR 
        `admin`.`email` LIKE '%$search%' OR 
        `admin`.`dienthoai` LIKE '%$search%' OR
        `admin`.`quyen` LIKE '%$search%' OR
        `admin`.`ngaytao` LIKE '%$search%'
        ";
$result_enrollments = mysqli_query($connect, $query_enrollments);
?>

<!-- Form tìm kiếm -->
<form action="" method="get">
    <label for="search">Tìm kiếm ADMIN:</label>
    <input type="text" name="search" value="<?= htmlspecialchars($search) ?>" placeholder="Nhập tên admin, email,số điện thoại">
    <input type="submit" value="Tìm kiếm">
    <input type="reset" value="Nhập lại">
</form>

<!-- Bảng hiển thị  -->

<table border="1">
    <tr>
        <th>STT</th>
        <th>Id_Admin</th>
        <th>Full_Name</th>
        <th>Password</th>
        <th>Hoten</th>
        <th>EMAIL</th>
        <th>PHONE</th>
        <th>Quyen</th>
        <th>DATE_REGISTER</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result_enrollments)): ?>
        <tr>
            <td><?= $stt++ ?></td>
            <td><?= $row['admin_id']?></td>
            <td><?= $row['username'] ?></td>
            <td><?= $row['password'] ?></td>
            <td><?= $row['hoten'] ?></td>
            <td><?= $row['email'] ?></td>
            <td><?= $row['dienthoai'] ?></td>
            <td><?= $row['quyen'] ?></td>
            <td><?= $row['ngaytao'] ?></td>
            <!-- <td><a href="delete.php?student_id=<?= $row['admin_id'] ?>">Xóa</a></td>  -->
        </tr>
    <?php endwhile; ?>
    <?php if (mysqli_num_rows($result_enrollments) == 0) {
        echo "<tr><td colspan='6'>Không có thông tin nào</td></tr>";
    }
    ?>
</table>
<!-- <a href="addstudent.php">Thêm mới</a> -->


