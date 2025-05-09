<?php
include $_SERVER['DOCUMENT_ROOT'] .'/Project1_Product/connect.php';
include(__DIR__ . '/../header.php');
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $hoten = $_POST['hoten'];
    $email = $_POST['email'];
    $matkhau = password_hash($_POST['matkhau'], PASSWORD_DEFAULT); // Mã hóa mật khẩu
    $diachi = $_POST['diachi'];
    $dienthoai = $_POST['dienthoai'];
    $ngaydangky = date("Y-m-d");

    $sql = "INSERT INTO khachhang (hoten, email, matkhau, diachi, dienthoai, ngaydangky)
            VALUES ('$hoten', '$email', '$matkhau', '$diachi', '$dienthoai', '$ngaydangky')";

    if (mysqli_query($connect, $sql)) {
        echo "Đăng ký thành công! <a href='login.php'>Đăng nhập</a>";
    } else {
        echo "Lỗi: " . mysqli_error($connect);
    }
}
?>

<!-- Giao diện đăng ký -->
<form method="POST">
    <h2>Đăng ký</h2>
    Họ tên: <input type="text" name="hoten" required><br>
    Email: <input type="email" name="email" required><br>
    Mật khẩu: <input type="password" name="matkhau" required><br>
    Địa chỉ: <input type="text" name="diachi"><br>
    Điện thoại: <input type="text" name="dienthoai"><br>
    <button type="submit">Đăng ký</button>
</form>
