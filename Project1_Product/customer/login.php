
<?php
// bọc session 
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include(__DIR__ . '/../header.php');
include $_SERVER['DOCUMENT_ROOT']  . '/Project1_Product/connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $matkhau = $_POST['matkhau'];

    $sql = "SELECT * FROM khachhang WHERE email = '$email'";
    $result = mysqli_query($connect, $sql);
    $kh = mysqli_fetch_assoc($result);

    if ($kh && password_verify($matkhau, $kh['matkhau'])) {
        $_SESSION['makh'] = $kh['makh'];
        $_SESSION['hoten'] = $kh['hoten'];
        echo "Đăng nhập thành công. <a href='/Project1_Product/index.php'>Về trang chủ</a>";
    } else {
        echo "Email hoặc mật khẩu không đúng!";
    }
}
?>

<!-- Giao diện đăng nhập -->
<form method="POST">
    <h2>Đăng nhập</h2>
    Email: <input type="email" name="email" required><br>
    Mật khẩu: <input type="password" name="matkhau" required><br>
    <button type="submit">Đăng nhập</button>
</form>
