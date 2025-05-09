<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Web Bán Máy Tính</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />

    <style>
        * {
            box-sizing: border-box;
            padding: 0;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .trangchu {
            background-color: #1e1e2f;
            padding: 10px 20px;
        }

        .menu {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .menu ul {
            display: flex;
            list-style-type: none;
            gap: 20px;
        }

        .menu ul li {
            position: relative;
        }

        .menu a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            display: block;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .menu a:hover {
            background-color: #444;
        }

        /* Search box */
        .box {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .box input[type="search"] {
            padding: 6px 10px;
            border: none;
            border-radius: 4px;
        }

        .box .icon {
            color: white;
            font-size: 18px;
        }

        /* Dropdown */
        .user-dropdown .dropdown-content {
            display: none;
            position: absolute;
            top: 100%;
            right: 0;
            background-color: #333;
            min-width: 150px;
            border-radius: 5px;
            overflow: hidden;
            z-index: 1;
        }

        .user-dropdown:hover .dropdown-content {
            display: block;
            
        }

        .dropdown-content li a {
            color: white;
            padding: 10px;
            display: block;
        }

        .dropdown-content li a:hover {
            background-color: #555;
        }


        .logo img {
            max-width: 50px;
            /* Giới hạn chiều rộng tối đa */
            height: auto;
            /* Đảm bảo tỉ lệ ảnh không bị méo */
        }
    </style>
</head>

<body>
    <div class="trangchu">
        <div class="menu">
            <a href="/Project1_Product/index.php"> <!-- hoặc đổi lại theo tên thư mục -->
                <div class="logo"><img src="https://png.pngtree.com/png-clipart/20230207/original/pngtree-beauty-logo-design-png-image_8947095.png" alt=""></div>
            </a>
            <div class="box">
                <span class="icon"><i class="fa fa-search"></i></span>
                <input type="search" id="search" placeholder="Tìm kiếm sản phẩm..." />
            </div>
            <ul>
                <li>
                    <a href=""><img src="https://cdn-icons-png.flaticon.com/512/1828/1828859.png" width="24" alt="Danh mục" />
                    </a>
                </li>
                <li><a href="#"><img src="https://cdn-icons-png.flaticon.com/512/107/107831.png" width="24" alt="Giỏ hàng" />
                    </a></li>
                <li class="user-dropdown">
                    <a href="#"><i class="fas fa-user-circle"></i></a>
                    <ul class="dropdown-content">
                        <li><a href="/Project1_Product/customer/register.php">Đăng ký</a></li>
                        <li><a href="/Project1_Product/customer/login.php">Đăng nhập</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</body>

</html>