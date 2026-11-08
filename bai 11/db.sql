-- Câu lệnh tạo database
-- create database + tên db

-- create database if not exists wnetflix;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);

-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);

-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);

-- Thêm dữ liệu vào bảng nguoi_dung
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, so_dien_thoai) VALUES ('Btuananh', 'Btuananh', 'Btuananh@gmail.com', '0333797893');
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, so_dien_thoai) VALUES ('Hphuong', '234','Hphuong@gmail.com', '0377814598');
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, so_dien_thoai) VALUES ('Tmai', '345','Tmai@gmail.com', '0765733205');
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, so_dien_thoai) VALUES ('Hleo', '456','Hleo@gmail.com', '0869766081');

-- Thêm dữ liệu vào bảng dao_dien
INSERT INTO dao_dien (ten_dao_dien) VALUES ('Trấn Thành');
INSERT INTO dao_dien (ten_dao_dien) VALUES ('Phi Tiến Sơn');
INSERT INTO dao_dien (ten_dao_dien) VALUES ('Victo Vũ');

-- Thêm dữ liệu vào bảng dien_vien
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Trần Nghĩa (vai Ngạn)');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Trúc Anh (vai Hà Lan)');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Trần Phong (vai Dũng)');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Đỗ Khánh Vân (vai Trà Long)');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Lê Giang');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Uyển Ân');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Song Luân');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Khả Như');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Doãn Quốc Đam');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Cao Thuỳ Linh');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Anh Tuấn');
INSERT INTO dien_vien (ten_dien_vien) VALUES ('Nguyệt Hằng');

-- Thêm dữ liệu vào bảng phim
INSERT INTO phim (ten_phim, thoi_luong, nam, gioi_thieu, dao_dien_id) VALUES ('Nhà Bà Nữ', 103, 2023, 'Bộ phim xoay quanh gia đình ba thế hệ của bà Ngọc...', 1);
INSERT INTO phim (ten_phim, thoi_luong, nam, gioi_thieu, dao_dien_id) VALUES ('Đào, phở và piano', 100, 2023, 'Đào, phở và piano lấy bối cảnh trận Hà Nội 1946,...', 2);
INSERT INTO phim (ten_phim, thoi_luong, nam, gioi_thieu, dao_dien_id) VALUES ('Mắt biếc', 117, 2019, 'Mắt biếc xoay quanh mối tình đơn phương của Ngạn...', 3);

-- Thêm dữ liệu vào bảng quoc_gia
INSERT INTO quoc_gia (ten_quoc_gia) VALUES ('Việt Nam');
INSERT INTO quoc_gia (ten_quoc_gia) VALUES ('Hàn Quốc');
INSERT INTO quoc_gia (ten_quoc_gia) VALUES ('Trung Quốc');

-- Thêm dữ liệu vào bảng the_loai
INSERT INTO the_loai (ten_the_loai) VALUES ('Hài');
INSERT INTO the_loai (ten_the_loai) VALUES ('Chính kịch');
INSERT INTO the_loai (ten_the_loai) VALUES ('Lãng mạn');
INSERT INTO the_loai (ten_the_loai) VALUES ('Chiến tranh');
INSERT INTO the_loai (ten_the_loai) VALUES ('Tuyên truyền');
INSERT INTO the_loai (ten_the_loai) VALUES ('Chính kịch âm hưởng');

-- Join phim và the_loai
SELECT * FROM phim p -- select * from: lấy dữ liệu từ bảng phim, p: đặt tên viết tắt cho bảng phim
join phim_the_loai ptl -- join: kết hợp 2 bảng phim (phim và phim_the_loai)
on p.id = ptl.phim_id -- on: xác định điều kiện liên kết giữa 2 bảng, p.id = ptl.phim_id: ghép các dòng có id của bảng phim bằng với phim_id của bảng phim_the_loai
join the_loai tl -- join: kết hợp 2 bảng phim (phim_the_loai và the_loai)
on ptl.the_loai_id = tl.id -- on: xác định điều kiện liên kết giữa 2 bảng, ptl.the_loai_id = tl.id: ghép các dòng có the_loai_id của bảng phim_the_loai bằng với id của bảng the_loai
where p.id = 5; --where: lọc dữ liệu, p.id = 5: lấy ra phim có id = 5

-- Join phim và dien_vien
SELECT * FROM phim p -- select * from: lấy dữ liệu từ bảng phim, p: đặt tên viết tắt cho bảng phim
join phim_dien_vien pdv -- join: kết hợp 2 bảng phim (phim và phim_dien_vien)
on p.id = pdv.phim_id -- on : xác định điều kiện liên kết giữa 2 bảng, p.id = pdv.phim_id: ghép các dòng có id của bảng phim bằng với phim_id của bảng phim_dien_vien
join dien_vien dv -- join: kết hợp 2 bảng phim (phim_dien_vien và dien_vien)
on pdv.dien_vien_id = dv.id -- on: xác định điều kiện liên kết giữa 2 bảng, pdv.dien_vien_id = dv.id: ghép các dòng có dien_vien_id của bảng phim_dien_vien bằng với id của bảng dien_vien
where p.id = 6; --where: lọc dữ liệu, p.id = 6: lấy ra phim có id = 6

-- select * : Lấy hết dữ liệu trong bảng
SELECT * FROM phim;
-- select lấy ra dữ liệu
-- insert: thêm dữ liệu vào bảng
INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, email, so_dien_thoai) VALUES ('Btuananh', 'Btuananh', 'Btuananh@gmail.com', '0333797893'); --không cần thiết phải thêm id vì id là auto_increment
-- update: cập nhật dữ liệu trong bảng
UPDATE nguoi_dung SET ten_dang_nhap = 'Btuananh' WHERE id = 1; --'Btuananh' là giá trị mới, id = 1 là đổi tên đăng nhập của người dùng có id = 1 thành 'Pthuy123'
-- delete: xóa dữ liệu trong bảng
DELETE FROM nguoi_dung WHERE id = 1; -- id = 1 là xoá người dùng có id = 1; nếu bỏ WHERE thì sẽ xoá hết dữ liệu trong bảng