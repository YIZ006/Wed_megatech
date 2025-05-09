<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang quản trị</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Arial', sans-serif;
    }

    body {
        background-color: #f5f5f5;
        color: #333;
    }

    h1 {
        text-align: center;
        padding: 20px;
        background-color: #ecf0f1;
        color: #2c3e50;
    }

    .menu-container {
        background-color: #2c3e50;
    }

    .menu {
        max-width: 1200px;
        margin: auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 0 20px;
    }

    ul.menu-list {
        display: flex;
        list-style: none;
        /* ✅ XÓA DẤU CHẤM */
    }

    .menu-list li {
        position: relative;
    }

    .menu-list li a {
        display: block;
        color: white;
        text-decoration: none;
        padding: 15px;
    }

    .menu-list li a:hover {
        background-color: #34495e;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        top: 100%;
        background-color: #2c3e50;
        min-width: 200px;
        border-radius: 5px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
        z-index: 10;
    }

    .dropdown-content li {
        border-bottom: 1px solid #444;
        list-style: none;
    }

    .dropdown-content li a,
    .dropdown-content li span {
        display: block;
        padding: 12px 16px;
        color: white;
        text-decoration: none;
    }

    .dropdown-content li a:hover {
        background-color: #34495e;
    }

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .user-icon {
        font-size: 24px;
    }

    /* ✅ Căn chỉnh dropdown user không bị lệch */
    .menu-list.user {
        flex: 1;
        justify-content: flex-end;
    }

    @media (max-width: 768px) {
        .menu {
            flex-direction: column;
            align-items: flex-start;
        }

        ul.menu-list {
            flex-direction: column;
            width: 100%;
        }

        .dropdown-content {
            position: static;
            width: 100%;
            box-shadow: none;
        }
    }

    /* Fix user dropdown bị lệch */
    .menu-list.user li {
        position: relative;
    }

    .menu-list.user .dropdown-content {
        right: 0;
        left: auto;
        top: 100%;
    }
    </style>
</head>

<body>

    <h1>Đây là trang hệ thống quản trị dữ liệu</h1>
    <?php include $_SERVER['DOCUMENT_ROOT'] . '/Project1_Product/connect.php'; ?>

    <?php
// bọc session 
if (session_status() == PHP_SESSION_NONE) {
  session_start();
}

  // Kiểm tra nếu chưa đăng nhập thì đá về login
  if (!isset($_SESSION['admin_id'])) {
    header("Location: /Project1_Product/admin/login.php");
    exit;
  }

  // Giả sử admin đã đăng nhập và lưu id trong session
  if (isset($_SESSION['admin_id']) && !isset($_SESSION['login_logged'])) {
    $admin_id = $_SESSION['admin_id'];
    $hanhdong = "Đăng nhập hệ thống";
    $thoigian = date('Y-m-d H:i:s');

    $sql_log = "INSERT INTO admin_log (admin_id, hanhdong, thoigian) VALUES (?, ?, ?)";
    $stmt = $connect->prepare($sql_log);
    $stmt->bind_param("iss", $admin_id, $hanhdong, $thoigian);
    $stmt->execute();

    // Ghi nhận đã log để không lặp lại
    $_SESSION['login_logged'] = true;
  }

  // Lấy biến ra từ session
  $admin_id = $_SESSION['admin_id'];
  $username = $_SESSION['username'];
  $quyen = $_SESSION['quyen'];
  ?>

    <div class="menu-container">
        <div class="menu">
            <!-- Menu chính -->
            <ul class="menu-list">
                <li class="dropdown">
                    <a href="#"><img src="https://cdn-icons-png.flaticon.com/512/1828/1828859.png" width="24"
                            alt="Menu" /></a>
                    <ul class="dropdown-content">
                        <li><a href="/Project1_Product/admin/quanly_donhang.php">Quản lý Đơn hàng</a></li>
                        <li><a href="/Project1_Product/product/quanly_sanpham.php">Quản lý Sản phẩm</a></li>
                        <li><a href="/Project1_Product/admin/quanly_khachhang.php">Quản lý Khách hàng</a></li>
                        <li><a href="/Project1_Product/admin/taikhoan_quantri.php">Tài khoản Quản trị</a></li>
                        <li><a href="/Project1_Product/product/quanly_danhmuc.php">Quản lý danh mục</a></li>
                    </ul>
                </li>
            </ul>

            <!-- User Dropdown -->
            <ul class="menu-list user">
                <li class="dropdown">
                    <a href="#"><i class="fas fa-user-circle user-icon"></i></a>
                    <ul class="dropdown-content">
                        <li><span>👋 Xin chào Admin <?= htmlspecialchars($username) ?> (ID: <?= $admin_id ?>)
                            </span></li>
                        <li><span style="font-size: 12px;">🔑 Quyền: <?= htmlspecialchars($quyen) ?></span></li>
                        <li><a href="/Project1_Product/admin/lichsu_hoatdong.php">Lịch sử hoạt động </a></li>
                        <a href="/Project1_Product/admin/login.php?logout=1" id="logout">Đăng Xuất</a>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>

</html>