# PTCoffee
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Phung82/PTCoffee.git
git push -u origin main
------------------------------------------------------------------------------

ĐỒ ÁN MÔN HỌC THỰC TẬP LẬP TRÌNH WEB
NHÓM SINH VIÊN: 
	1-Nguyễn Tiểu Phụng
	2-Huỳnh Đức Anh Tuấn

XÂY DỰNG WEBSTE QUẢN LÝ QUÁN CÀ PHÊ TRÊN NỀN TẢNG WEB MVC PHP VÀ PHPMYADMIN (MYSQL)

HƯỚNG DẪN CÀI ĐẶT
I- Cài đặt môi trường web server xampp mặc định theo đường dẫn C://xampp/
	+ Khởi động Apache và My SQL
II - Cài đặt cơ sở dữ liệu
Bước 1: Vào đường dẫn : http://localhost/phpmyadmin/ để tạo cơ sở dữ liệu
	'hostname' => 'localhost',
	'username' => 'root',
	'password' => '',
	'database' => 'ptcoffee',
Bước 2: import file database/ptcoffee.sql vào cơ sở dữ liệu vừa tạo
III- Cài đặt source web
Copy thư mục ptcoffee.vn vào C:\xampp\htdocs\

=> Chú ý nếu thêm thư mục chứa source có thay đổi thì cập nhật thông tin tại ..\application\config\config.php
 dòng $config['base_url'] = 'http://localhost/ptcoffee.vn/';
=> Chú ý nếu tên cơ sỡ dữ liệu có thay đổi thì cập nhật thông tin tại ..\application\config\database.php
dòng $db['default'] = array(...)
------------------------------------------------------------------------------
TRUY CẬP TRANG CHỦ
Link admin: /admin/login
email: admin@gmail.com
pass: admin